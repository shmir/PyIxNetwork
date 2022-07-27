"""
Classes and utilities to manage IXN topologies and NGPF.

@author yoram@ignissoft.com
"""
import time

from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject


class IxnTopologyBaseClass(IxnObject):

    action_2_status = {"start": "started", "stop": "notStarted"}

    def get_device_groups(self):
        """
        :return: dictionary {name: object} of all device groups.
        """
        return {o.obj_name(): o for o in self.get_objects_or_children_by_type("deviceGroup")}

    # pylint: disable=keyword-arg-before-vararg
    def action(self, action, timeout=64, *arguments):
        self.execute(action, (self.ref,) + arguments)
        now = time.time()
        while self.get_attribute("status") != self.action_2_status[action] and time.time() - now <= timeout:
            time.sleep(1)
        if time.time() - now > timeout:
            raise TgnError(f"Failed to {action} protocols after {time.time() - now} seconds")

    def start(self):
        """Start the protocol.

        The function will return after the protocol is started.
        """
        self.action("start")

    def stop(self):
        """Stop the protocol.

        The function will return after the protocol is stopped.
        """
        self.action("stop")


class IxnTopology(IxnTopologyBaseClass):
    """Represents IXN topology."""

    def __init__(self, **data: object) -> None:
        data["objType"] = "topology"
        data["parent"] = self.root
        super().__init__(**data)


class IxnDeviceGroup(IxnTopologyBaseClass):
    """Represents IXN device group."""

    def __init__(self, **data: object) -> None:
        data["objType"] = "deviceGroup"
        super().__init__(**data)


class IxnNetworkGroup(IxnTopologyBaseClass):
    """Represents IXN network group."""

    def __init__(self, **data: object) -> None:
        data["objType"] = "networkGroup"
        super().__init__(**data)


class IxnNextGenProtocol(IxnTopologyBaseClass):
    """Represents IXN NGPF."""

    protocol = ""

    def __init__(self, **data: object) -> None:
        data["objType"] = self.protocol
        super().__init__(**data)


class IxnNgpfEthernet(IxnNextGenProtocol):
    protocol = "ethernet"


class IxnNgpfVlan(IxnNextGenProtocol):
    protocol = "vlan"


class IxnNgpfIpv4(IxnNextGenProtocol):
    protocol = "ipv4"


class IxnNgpfIpv6(IxnNextGenProtocol):
    protocol = "ipv6"
