"""
Implements IxNetwork API over IxNetwork REST server.
"""
import copy
import json
import logging
import re
import time
from io import BytesIO
from os import path
from typing import Optional, Union

import requests
import urllib3
from requests.exceptions import SSLError
from trafficgenerator.tgn_utils import TgnError
from urllib3.exceptions import InsecureRequestWarning

urllib3.disable_warnings(InsecureRequestWarning)

Response = requests.models.Response


# pylint: disable=too-many-public-methods, too-many-instance-attributes
class IxnRestWrapper:
    """IxNetwork API over IxNetwork REST server."""

    null = "null"

    def __init__(self, logger: logging.Logger) -> None:
        """Init IXN REST package.

        :param logger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """
        self.logger = logger
        self.api_key = None

    def connect(self, ip, port, auth=None):
        if port == 443:
            url = f"https://{ip}:{port}/api/v1/auth/session"
            if auth:
                data = {"username": auth[0], "password": auth[1]}
            else:
                data = None
            headers = {"content-type": "application/json"}
            response = requests.request("POST", url, json=data, headers=headers, verify=False)
            response_text = json.loads(response.text)
            if response_text.get("error"):
                raise TgnError(f'Failed to connect to IxNetwork server {ip}:{port} - {response_text.get("error")}')
            self.api_key = response_text["apiKey"]
            self.payload = {"applicationType": "ixnrest"}
            self.headers = {"content-type": "application/json"}

        # Perform get to determine whether http is supported or we should use https.
        try:
            self.server_url = f"https://{ip}:{port}"
            self.get(self.server_url + "/api/v1/sessions", timeout=4)
        except SSLError:
            self.server_url = f"http://{ip}:{port}"

        response = self.post(self.server_url + "/api/v1/sessions", data={"applicationType": "ixnrest"})
        if "id" in response.json():
            self.session = f"/api/v1/sessions/{response.json()['id']}/"
        else:
            self.session = response.json()["links"][0]["href"] + "/"
        self.root_url = self.server_url + self.session

        if self.api_key and self.api_key != "00000000000000000000000000000000":
            self.post(self.root_url + "operations/start")
        else:
            self._wait_for(self.server_url + self.session + "ixnetwork", 80)

        self.version = self.getVersion()

    def disconnect(self) -> None:
        if self.session.split("/")[-2] != "1":
            if self.api_key and self.api_key != "00000000000000000000000000000000":
                self.post(self.root_url + "operations/stop")
            self.delete(self.root_url)

    #
    # IxNetwork REST commands
    #

    def wait_for_complete(self, response: Response, timeout: Optional[int] = 128) -> Response:
        """Wait for non-blocking REST operation to complete."""
        response_data = response.json()
        progress_url = response_data["url"]

        if "http" not in progress_url:
            # sometimes the progress url is relative, for example in version 8.50 linux loadconfig
            progress_url = self.server_url + progress_url

        for _ in range(timeout):
            time.sleep(1)

            if "errors" in response_data:
                raise TgnError(response_data["errors"][0])

            state = response_data.get("state", "").lower()

            if state == "error":
                result = json.loads(response.content)["result"].strip()
                raise TgnError(f"wait for post {response.url} failed - {result}")
            if state == "success":
                return response

            response = self.get(progress_url)
            response_data = response.json()

            if not isinstance(response_data, dict):
                response_data = response_data[0]

        raise TgnError(f"{self.session} operation failed, state is {state} after {timeout} seconds")

    def request(self, command, url: str, headers: dict = None, data: Optional[Union[dict, str]] = None, **kwargs) -> Response:
        headers = headers if headers else {"content-type": "application/json"}
        if self.api_key:
            headers["x-api-key"] = self.api_key

        kwargs_to_print = copy.deepcopy(kwargs)
        if headers and headers.get("content-type", None) == "application/octet-stream":
            kwargs_to_print["data"] = "actual octet-stream not logged..."
        kwargs_to_print["headers"] = headers
        kwargs_to_print["data"] = data
        self.logger.debug(f"{command.__name__} - {url} - {kwargs_to_print}")

        if isinstance(data, dict):
            response = command(url, verify=False, headers=headers, json=data, **kwargs)
        else:
            response = command(url, verify=False, headers=headers, data=data, **kwargs)
        self.logger.debug(f"{response}")
        if response.status_code >= 400:
            error = None
            if response.text:
                error = json.loads(response.text).get("error", None)
                if not error:
                    error = json.loads(response.text).get("errors", None)
                if not error:
                    error = json.loads(response.text).get("Message", None)
            raise TgnError(
                f"failed to {command.__name__} {url} {kwargs_to_print}\n"
                f"status code - {response.status_code}\n"
                f"error - {error}"
            )
        return response

    def get(self, url, **kwargs) -> Response:
        return self.request(requests.get, url=url, data=None, **kwargs)

    def post(self, url: str, data: Optional[dict] = None) -> Response:
        data = data if data else {}
        response = self.request(requests.post, url, data=data)
        if response.status_code != 201 and "id" in response.json():
            return self.wait_for_complete(response)
        return response

    def options(self, url) -> Response:
        return self.request(requests.options, url)

    def patch(self, url: str, data: dict) -> None:
        response = self.request(requests.patch, url, data=data)
        if response.status_code != 200:
            raise TgnError(f"object {url} failed to set attributes {data}")

    def delete(self, url: str) -> None:
        self.request(requests.delete, url)

    #
    # IxNetwork atomic API commands.
    #

    def getRoot(self):
        return self.session + "ixnetwork"

    def commit(self) -> None:
        pass

    # pylint: disable=keyword-arg-before-vararg
    def execute(
        self, command: str, obj_ref: Optional[str] = None, valid_on_linux: bool = True, *arguments: object
    ) -> Optional[str]:
        data: dict = {}
        if obj_ref:
            operations_url = f"{re.sub(r'/[0-9]+', '', obj_ref.replace(self.session, ''))}/operations/"
        else:
            operations_url = "ixnetwork/operations/"
        for argument in arguments:
            data["arg" + str(len(data) + 1)] = argument
        try:
            response = self.post(self.root_url + operations_url + command, data)
            return response.json()["result"]
        except TgnError as err:
            # Ignore error if command not supported on Linux servers.
            if valid_on_linux or "is not a valid operation" not in repr(err):
                raise err
        return None

    def getVersion(self):
        return self.get(self.root_url + "ixnetwork/globals/").json()["buildNumber"]

    def newConfig(self) -> None:
        new_config_url = self.root_url + "ixnetwork/operations/newconfig"
        self.post(new_config_url, data=None)

    def loadConfig(self, config_file_name):
        basename = path.basename(config_file_name)
        with open(config_file_name, mode="rb") as f:
            configContent = f.read()

        upload_headers = {"content-type": "application/octet-stream"}
        upload_url = self.root_url + "ixnetwork/files"
        upload_params = {"filename": basename}
        # todo: use self.port
        response = self.request(requests.post, upload_url, data=configContent, headers=upload_headers, params=upload_params)
        if "id" in response.json():
            self.wait_for_complete(response)

        load_config_data = {"arg1": basename}
        load_config_url = self.root_url + "ixnetwork/operations/loadconfig"
        self.post(load_config_url, data=load_config_data)

    def save_config(self, config_file_name: str) -> None:
        """Download ixncfg file from server to local file."""
        basename = path.basename(config_file_name)
        data = {"arg1": path.basename(config_file_name)}
        self.post(self.root_url + "ixnetwork/operations/saveconfig", data)
        self.get_file(basename, config_file_name)

    def get_file(self, remote_file_path, local_file_path: Union[str, BytesIO]) -> None:
        """Download file from server to local file or file-like object."""
        download_headers = {"content-type": "application/octet-stream"}
        download_url = self.root_url + "ixnetwork/files"
        download_params = {"filename": path.basename(remote_file_path)}
        if path.dirname(remote_file_path):
            download_params["absolute"] = path.dirname(remote_file_path)
        res = self.request(requests.get, download_url, headers=download_headers, params=download_params)

        if isinstance(local_file_path, str):
            with open(local_file_path, mode="wb") as f:
                f.write(res.content)
        else:
            local_file_path.write(res.content)

    def getList(self, obj_ref, childList):
        response = self.get(self.server_url + obj_ref + "/" + childList)
        if isinstance(response.json(), list):
            return [self._get_href(c) for c in response.json()]
        return [self._get_href(response.json())]

    def getAttribute(self, obj_ref, attribute):
        response = self.getAttributes(obj_ref)
        return response.get(attribute, "::ixNet::OK")

    def getAttributes(self, obj_ref: str) -> dict:
        attributes = self.get(self.server_url + obj_ref).json()
        self.logger.debug(json.dumps(attributes, indent=2))
        return attributes

    def getListAttribute(self, obj_ref: str, attribute: str) -> list:
        value = self.getAttribute(obj_ref, attribute)
        if isinstance(value, dict):
            return [v[0] for v in value.values()]
        if len(value) > 0 and isinstance(value[0], list):
            return [v[0] for v in value]
        return value

    def help_(self, obj_ref):
        response = self.options(self.server_url + obj_ref)
        children = response.json()["custom"]["children"]
        children_list = [c["name"] for c in children]
        attributes = response.json()["custom"]["attributes"]
        attributes_list = [a["name"] for a in attributes]
        operations = response.json()["custom"]["operations"]
        operations_list = [o["operation"] for o in operations]
        return children_list, attributes_list, operations_list

    def add(self, parent, obj_type, **attributes):
        """IXN API add command.

        :param parent: object parent - object will be created under this parent.
        :param object_type: object type.
        :param attributes: additional attributes.
        @return: IXN object reference.
        """
        response = self.post(self.server_url + parent.ref + "/" + obj_type, attributes)
        return self._get_href(response.json())

    def setAttributes(self, obj_ref, **attributes):
        self.patch(self.server_url + obj_ref, attributes)

    def remapIds(self, obj_ref):
        return obj_ref

    #
    # IxNetwork object commands.
    #

    def set_licensing(self, licensing_servers: list = None, mode: str = "mixed", tier: str = "tier3") -> None:
        licensing_servers = licensing_servers if licensing_servers else ["localhost"]
        licensing_url = self.root_url + "ixnetwork/globals/licensing"
        licensing = self.get(licensing_url).json()
        if licensing["licensingServers"] != licensing_servers or licensing["mode"] != mode or licensing["tier"] != tier:
            self.patch(licensing_url, {"licensingServers": licensing_servers, "mode": mode, "tier": tier})

    def regenerate(self, _, traffic_items):
        non_quick_tis = [ti for ti in traffic_items if ti.get_attributes()["trafficItemType"] != "quick"]
        self.traffic_items_operation("generate", non_quick_tis)

    def startStatelessTraffic(self, _, traffic_items):
        self.traffic_items_operation("startstatelesstraffic", traffic_items)

    def stopStatelessTraffic(self, _, traffic_items):
        self.traffic_items_operation("stopstatelesstraffic", traffic_items)

    def traffic_items_operation(self, operation, traffic_items):
        if traffic_items:
            rep_ti = traffic_items[0]
            non_quick_tis = [ti.ref for ti in traffic_items]
            rep_ti.execute(operation, non_quick_tis)

    #
    # Helpers and properties.
    #

    def _get_href(self, response_entry):
        return response_entry["links"][0]["href"]

    def _wait_for(self, url, timeout):
        for _ in range(timeout):
            try:
                self.get(url)
                return
            except TgnError:
                time.sleep(1)
        raise TgnError(f"failed to connect - {self.get(url).json()['errors']}")
