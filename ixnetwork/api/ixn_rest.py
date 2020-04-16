"""
:author: yoram@ignissoft.com
"""

from os import path
import requests
import time
import re
import copy
import json

from trafficgenerator.tgn_utils import TgnError


class IxnRestWrapper(object):

    null = 'null'

    def __init__(self, logger):
        """ Init IXN REST package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """

        self.logger = logger
        self.api_key = None

    def connect(self, ip, port, auth=None):
        if port == 443:
            url = 'https://{}:{}/api/v1/auth/session'.format(ip, port)
            if auth:
                data = {'username': auth[0], 'password': auth[1]}
            else:
                data = None
            headers = {'content-type': 'application/json'}
            response = requests.request('POST', url, json=data, headers=headers, verify=False)
            self.api_key = json.loads(response.text)['apiKey']
            self.payload = {'applicationType': 'ixnrest'}
            self.headers = {'content-type': 'application/json'}

        # Perform get to determine whether http is supported or we should use https.
        try:
            self.server_url = 'https://{}:{}'.format(ip, port)
            a = self.get(self.server_url + '/api/v1/sessions', timeout=4)
        except Exception as _:
            b = self.server_url = 'http://{}:{}'.format(ip, port)
            print(b)

        response = self.post(self.server_url + '/api/v1/sessions', data={'applicationType': 'ixnrest'})
        if 'id' in response.json():
            self.session = '/api/v1/sessions/{}/'.format(response.json()['id'])
        else:
            self.session = response.json()['links'][0]['href'] + '/'
        self.root_url = self.server_url + self.session

        if self.api_key and self.api_key != '00000000000000000000000000000000':
            self.post(self.root_url + 'operations/start')
        else:
            self._wait_for(self.server_url + self.session + 'ixnetwork', 80)

        self.version = self.getVersion()

    def disconnect(self):
        if self.session.split('/')[-2] != '1':
            if self.api_key and self.api_key != '00000000000000000000000000000000':
                self.post(self.root_url + 'operations/stop')
            self.delete(self.root_url)

    #
    # IxNetwork REST commands
    #

    def waitForComplete(self, request, response, timeout=128):
        if 'errors' in response.json():
            raise TgnError(response.json()['errors'][0])
        if response.json()['state'].lower() == 'error':
            result = json.loads(response.content)['result'].strip()
            raise TgnError(f'wait for post {response.url} failed - {result}')
        if response.json()['state'].lower() == 'success':
            return
        progress_url = json.loads(response.content)[u'url']
        if 'http' not in progress_url:
            # sometimes the progress url is relative, for example in version 8.50 linux loadconfig
            progress_url = self.server_url + progress_url
        for _ in range(timeout):
            response = self.get(progress_url)
            if type(response.json()) == dict:
                state = response.json()['state']
            else:
                state = response.json()[0]['state']
            if state.lower() not in ['in_progress', 'down']:
                return
            time.sleep(1)
        raise TgnError('{} operation failed, state is {} after {} seconds'.
                       format(self.session, response.json()['state'], timeout))

    def request(self, command, url, headers={'content-type': 'application/json'}, data=None, **kwargs):
        if self.api_key:
            headers['x-api-key'] = self.api_key

        kwargs_to_print = copy.deepcopy(kwargs)
        if headers and headers.get('content-type', None) == 'application/octet-stream':
            kwargs_to_print['data'] = 'actual octet-stream not logged...'
        kwargs_to_print['headers'] = headers
        kwargs_to_print['data'] = data
        self.logger.debug('{} - {} - {}'.format(command.__name__, url, kwargs_to_print))

        if type(data) == dict:
            response = command(url, verify=False, headers=headers, json=data, **kwargs)
        else:
            response = command(url, verify=False, headers=headers, data=data, **kwargs)
        self.logger.debug('{}'.format(response))
        if response.status_code >= 400:
            error = None
            if response.text:
                error = json.loads(response.text).get('error', None)
                if not error:
                    error = json.loads(response.text).get('errors', None)
                if not error:
                    error = json.loads(response.text).get('Message', None)
            raise TgnError('failed to {} {} {}\nstatus code - {}\nerror - {}'.
                           format(command.__name__, url, kwargs_to_print, response.status_code, error))
        return response

    def get(self, url, **kwargs):
        return self.request(requests.get, url=url, data=None, **kwargs)

    def post(self, url, data={}):
        response = self.request(requests.post, url, data=data)
        if response.status_code != 201 and 'id' in response.json():
            self.waitForComplete(url, response)
        return response

    def options(self, url):
        return self.request(requests.options, url)

    def patch(self, url, data={}):
        response = self.request(requests.patch, url, data=data)
        if response.status_code != 200:
            raise TgnError('object {} failed to set attributes {}'.format(url, data))

    def delete(self, url):
        return self.request(requests.delete, url)

    #
    # IxNetwork atomic API commands.
    #

    def getRoot(self):
        return self.session + 'ixnetwork'

    def commit(self):
        pass

    def execute(self, command, obj_ref=None, valid_on_linux=True, *arguments):
        data = {}
        if obj_ref:
            operations_url = '{}/operations/'.format(re.sub(r'\/[0-9]+', '', obj_ref.replace(self.session, '')))
        else:
            operations_url = 'ixnetwork/operations/'
        for argument in arguments:
            data['arg' + str(len(data) + 1)] = argument
        try:
            response = self.post(self.root_url + operations_url + command, data)
            return response.json()['result']
        except Exception as e:
            # Not supported on Linux servers.
            if valid_on_linux or 'is not a valid operation' not in repr(e):
                raise e

    def getVersion(self):
        return self.get(self.root_url + 'ixnetwork/globals/').json()['buildNumber']

    def newConfig(self):
        new_config_url = self.root_url + 'ixnetwork/operations/newconfig'
        self.post(new_config_url, data=None)

    def loadConfig(self, config_file_name):
        basename = path.basename(config_file_name)
        with open(config_file_name, mode='rb') as f:
            configContent = f.read()

        upload_headers = {'content-type': 'application/octet-stream'}
        upload_url = self.root_url + 'ixnetwork/files'
        upload_params = {'filename': basename}
        # todo: use self.port
        response = self.request(requests.post, upload_url, data=configContent, headers=upload_headers,
                                params=upload_params)
        if 'id' in response.json():
            self.waitForComplete(upload_url, response)

        load_config_data = {'arg1': basename}
        load_config_url = self.root_url + 'ixnetwork/operations/loadconfig'
        self.post(load_config_url, data=load_config_data)

    def saveConfig(self, config_file_name):
        basename = path.basename(config_file_name)

        data = {'arg1': basename}
        self.post(self.root_url + 'ixnetwork/operations/saveconfig', data)

        download_headers = {'content-type': 'application/octet-stream'}
        download_url = self.root_url + 'ixnetwork/files'
        download_params = {'filename': basename}
        res = self.request(requests.get, download_url, headers=download_headers, params=download_params)

        with open(config_file_name, mode='wb') as f:
            f.write(res.content)

    def getList(self, obj_ref, childList):
        response = self.get(self.server_url + obj_ref + '/' + childList)
        if type(response.json()) is list:
            return [self._get_href(c) for c in response.json()]
        else:
            return [self._get_href(response.json())]

    def getAttribute(self, obj_ref, attribute):
        response = self.getAttributes(obj_ref)
        return response.get(attribute, '::ixNet::OK')

    def getAttributes(self, objRef):
        attributes = self.get(self.server_url + objRef).json()
        self.logger.debug(json.dumps(attributes, indent=2))
        return attributes

    def getListAttribute(self, objRef, attribute):
        value = self.getAttribute(objRef, attribute)
        if type(value) is dict:
            return [v[0] for v in value.values()]
        elif len(value) > 0 and type(value[0]) is list:
            return [v[0] for v in value]
        else:
            return value

    def help(self, objRef):
        response = self.options(self.server_url + objRef)
        children = response.json()['custom']['children']
        children_list = [c['name'] for c in children]
        attributes = response.json()['custom']['attributes']
        attributes_list = [a['name'] for a in attributes]
        operations = response.json()['custom']['operations']
        operations_list = [o['operation'] for o in operations]
        return children_list, attributes_list, operations_list

    def add(self, parent, obj_type, **attributes):
        """ IXN API add command

        @param parent: object parent - object will be created under this parent.
        @param object_type: object type.
        @param attributes: additional attributes.
        @return: STC object reference.
        """

        response = self.post(self.server_url + parent.ref + '/' + obj_type, attributes)
        return self._get_href(response.json())

    def setAttributes(self, obj_ref, **attributes):
        self.patch(self.server_url + obj_ref, attributes)

    def remapIds(self, objRef):
        return objRef

    #
    # IxNetwork object commands.
    #

    def set_licensing(self, licensingServers=['localhost'], mode='mixed', tier='tier3'):
        licensing_url = self.root_url + 'ixnetwork/globals/licensing'
        licensing = self.get(licensing_url).json()
        if licensing['licensingServers'] != licensingServers or licensing['mode'] != mode or licensing['tier'] != tier:
            self.patch(licensing_url, {'licensingServers': licensingServers, 'mode': mode, 'tier': tier})

    def regenerate(self, _, traffic_items):
        non_quick_tis = [ti for ti in traffic_items if ti.get_attributes()['trafficItemType'] != 'quick']
        self.traffic_items_operation('generate', non_quick_tis)

    def startStatelessTraffic(self, _, traffic_items):
        self.traffic_items_operation('startstatelesstraffic', traffic_items)

    def stopStatelessTraffic(self, _, traffic_items):
        self.traffic_items_operation('stopstatelesstraffic', traffic_items)

    def traffic_items_operation(self, operation, traffic_items):
        if traffic_items:
            rep_ti = traffic_items[0]
            non_quick_tis = [ti.ref for ti in traffic_items]
            rep_ti.execute(operation, non_quick_tis)

    #
    # Helpers and properties.
    #

    def _get_href(self, response_entry):
        return response_entry['links'][0]['href']

    def _wait_for(self, url, timeout):
        for _ in range(timeout):
            try:
                self.get(url)
                return
            except TgnError as _:
                time.sleep(1)
        raise TgnError('failed to connect - {}'.format(self.get(url).json()['errors']))
