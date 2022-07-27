"""
Classes and utilities to manage IXN protocol interface objects.
"""
from trafficgenerator.tgn_object import TgnL3
from trafficgenerator.tgn_utils import TgnError, is_true

from ixnetwork.ixn_object import IxnObject


def filter_ints_based_on_vlan(interfaces, vlan, count=1):
    """Filter list of interfaces based on VLAN presence or absence criteria.

    :TODO: add vlanEnable and vlanCount to interface/range/deviceGroup classes.

    :param interfaces: list of interfaces to filter.
    :param vlan: boolean indicating whether to filter interfaces with or without VLAN.
    :param vlan: number of expected VLANs (note that when vlanEnable == False, vlanCount == 1)
    :return: interfaces with VLAN(s) if vlan == True and vlanCount == count else interfaces without
        VLAN(s).
    """
    filtered_interfaces = []
    for interface in interfaces:
        if interface.type == "interface":
            ixn_vlan = interface.get_object_by_type("vlan")
            vlanEnable = is_true(ixn_vlan.get_attribute("vlanEnable"))
            vlanCount = int(ixn_vlan.get_attribute("vlanCount"))
        elif interface.type == "range":
            ixn_vlan = interface.get_object_by_type("vlanRange")
            vlanEnable = is_true(ixn_vlan.get_attribute("enabled"))
            vlanCount = len(ixn_vlan.get_objects_by_type("vlanIdInfo"))
        else:
            ixn_vlan = interface.get_object_by_type("ethernet")
            vlanEnable = is_true(ixn_vlan.get_attribute("useVlans"))
            vlanCount = int(ixn_vlan.get_attribute("vlanCount"))
        if not (vlanEnable ^ vlan) and vlanCount == count:
            filtered_interfaces.append(interface)
    return filtered_interfaces


class IxnInterface(IxnObject):
    def __init__(self, **data) -> None:
        """Create new protocol interface object in the API.

        :param parent: parent interface object.
        """
        data["objType"] = "interface"
        super().__init__(**data)

    def _create(self, **attributes):
        """Create new interface on IxNetwork.

        Set enabled and description (==name).

        :return: interface object reference.
        """
        attributes["enabled"] = True
        if "name" in self._data:
            attributes["description"] = self._data["name"]
        obj_ref = self.api.add(self.obj_parent(), self.obj_type(), **attributes)
        self.api.commit()
        return self.api.remapIds(obj_ref)

    def send_arp_ns(self) -> None:
        self.execute("sendArpAndNS")

    def send_rs(self) -> None:
        self.execute("sendRs")

    def ping(self, ip) -> None:
        rc = self.execute("sendPing", self.ref, ip)
        if "failed" in rc:
            raise TgnError(rc)

    def get_name(self):
        return self.get_attribute("description")


class IxnInterfaceL3(IxnObject, TgnL3):
    def ip(self):
        return self.get_attribute("ip")

    def num_ips(self):
        return 1
