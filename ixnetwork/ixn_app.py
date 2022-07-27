"""
Classes and utilities to manage IXN application.
"""
import time
from collections import OrderedDict
from logging import Logger
from pathlib import Path
from typing import Dict, List, Optional, Union

from trafficgenerator.tgn_app import TgnApp
from trafficgenerator.tgn_utils import ApiType, TgnError, is_true

from ixnetwork import TYPE_2_OBJECT
from ixnetwork.api.ixn_rest import IxnRestWrapper
from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_root import IxnRoot


def init_ixn(api: ApiType, logger: Logger, install_dir: Optional[str] = None) -> "IxnApp":
    """Create IXN object.

    :param TgnApp api: tcl/rest
    :param Logger logger: logger object
    :param str install_dir: IXN installation directory, applicable for Tcl only
    :return: IXN object
    """
    if api == ApiType.tcl:
        api_wrapper = IxnTclWrapper(logger, install_dir)
    elif api == ApiType.rest:
        api_wrapper = IxnRestWrapper(logger)  # type: ignore
    else:
        raise TgnError(f"{api} API not supported - use {ApiType.tcl} or {ApiType.rest}")
    return IxnApp(logger, api_wrapper)


class IxnApp(TgnApp):
    """IxNetwork driver. Equivalent to IxNetwork Application."""

    def __init__(self, logger: Logger, api_wrapper: Union[IxnTclWrapper, IxnRestWrapper]) -> None:
        """Set all kinds of application level objects - logger, api, etc.

        :param logger: python logger (e.g. logging.getLogger('log'))
        :param api_wrapper: api wrapper object inheriting
        """
        self.api: Union[IxnTclWrapper, IxnRestWrapper] = None
        super().__init__(logger, api_wrapper)
        IxnObject.str_2_class = TYPE_2_OBJECT

        self.api_server = ""
        self.api_port = -1
        self.root: IxnRoot = None

    def connect(self, api_server: str = "localhost", api_port: int = 11009, auth: Optional[List[str]] = None) -> None:
        """Connect to API server.

        :param api_server: API server IP address
        :param api_port: API server TCP port
        :param auth: list of (username, password)
        """
        self.api_server = api_server
        self.api_port = api_port
        self.api.connect(api_server, api_port, auth)
        self.root = IxnRoot(objRef=self.api.getRoot(), objType="root")
        self.root.logger = self.logger
        self.root.api = self.api
        IxnObject.root = self.root
        self.root.hw = self.root.get_child_static("availableHardware")

    def disconnect(self) -> None:
        """Disconnect from API server."""
        if self.root.ref is not None:
            self.api.disconnect()
        self.root = None

    #
    # IxNetwork operation commands.
    #

    def commit(self) -> None:
        """Perform ixNet commit command, NA (pass) for rest API."""
        self.api.commit()

    def load_config(self, config_file_name: Path) -> None:
        """Load ixncgf configuration file.

        :param config_file_name: Full path to ixncfg configuration file.
        """
        self.root.objects = OrderedDict()
        preferences = self.root.get_child_static("globals").get_child_static("preferences")
        preferences.set_attributes(connectPortsOnLoadConfig=False)
        self.api.loadConfig(config_file_name.resolve().as_posix())
        self.commit()
        self.root.get_children("vport")
        self.root.hw = self.root.get_child_static("availableHardware")

    def new_config(self) -> None:
        """Clean existing configuration and creates empty one."""
        self.root.objects = OrderedDict()
        self.api.newConfig()
        self.commit()

    def save_config(self, config_file_name: Path) -> None:
        """Save ixncfg configuration file.

        :param config_file_name: full path to ixncfg configuration file
        """
        self.commit()
        self.api.save_config(config_file_name.as_posix())

    #
    # IxNetwork GUI commands.
    #

    @staticmethod
    def reserve(ports: Dict[IxnPort, str], force=False, wait_for_up=True, timeout=80) -> None:
        """Reserve port and optionally wait for port to come up.

        :param ports: dict of <port, ip/module/port'>.
        :param force: whether to revoke existing reservation (True) or not (False).
        :param wait_for_up: True - wait for port to come up, False - return immediately.
        :param timeout: how long (seconds) to wait for port to come up.
        """
        if force:
            for port in ports:
                port.release()

        for port, location in ports.items():
            port.reserve(location, False, wait_for_up, timeout)

    def send_arp_ns(self) -> None:
        """Perform ixNet sendArpAll/sendNsAll Tcl commands. NA (pass) for rest API."""
        self.api.execute("sendArpAll", valid_on_linux=False)
        self.api.execute("sendNsAll", valid_on_linux=False)

    def protocols_start(self) -> None:
        """Start all protocols.

        It is the calling function responsibility to wait for all protocols to start.
        """
        self.api.execute("startAllProtocols")

    def protocols_stop(self) -> None:
        """Stop all protocols.

        It is the calling function responsibility to wait for all protocols to stop.
        """
        self.api.execute("stopAllProtocols")

    def regenerate(self) -> None:
        traffic = self.root.get_child_static("traffic")
        self.root.regenerate(traffic.get_objects_or_children_by_type("trafficItem"))

    def traffic_apply(self) -> None:
        traffic = self.root.get_child_static("traffic")
        self.root.get_child_static("traffic").execute("apply", traffic.ref)

    def l23_traffic_start(self, blocking=False) -> None:
        traffic = self.root.get_child_static("traffic")
        self.root.l23_traffic_start(traffic.get_objects_or_children_by_type("trafficItem"), blocking)

    def l23_traffic_stop(self) -> None:
        traffic = self.root.get_child_static("traffic")
        self.root.l23_traffic_stop(traffic.get_objects_or_children_by_type("trafficItem"))

    def protocol_start(self, protocol) -> None:
        """Start a protocol and wait for all protocols to start.

        :raise TgnError: if some protocol failed to start.
        """
        self.protocol_action(protocol, "start")

    def protocol_stop(self, protocol) -> None:
        """Stop all protocols and wait for all protocols to stop.

        :raise TgnError: if some protocol failed to stop.
        """
        self.protocol_action(protocol, "stop")

    def protocol_action(self, protocol: str, action: str) -> None:
        action_state = {"start": "started", "stop": "stopped"}
        protocol_objs = []
        for port in self.root.ports.values():
            protocols = port.get_child_static("protocols")
            protocol_obj = protocols.get_child_static(protocol)
            if is_true(protocol_obj.get_attribute("enabled")):
                protocol_obj.execute(action, protocol_obj.ref)
                protocol_objs.append(protocol_obj)
        # Must wait before reading state
        time.sleep(2)
        for protocol_obj in protocol_objs:
            running_state = protocol_obj.get_attribute("runningState")
            timer = 16
            while timer and running_state != action_state[action]:
                time.sleep(1)
                running_state = protocol_obj.get_attribute("runningState")
                timer -= 1
            if running_state != action_state[action]:
                raise TgnError(f"Failed to {action} protocol {protocol}")

    def quick_test_apply(self, name: str) -> None:
        """Apply quick test configuration."""
        self.root.quick_tests[name].apply()

    def quick_test_start(self, name, blocking: bool = False, timeout: int = 3600) -> None:
        """Start quick test."""
        self.root.quick_tests[name].start(blocking, timeout)

    def quick_test_stop(self, name: str) -> None:
        """Stop quick test."""
        return self.root.quick_tests[name].stop()
