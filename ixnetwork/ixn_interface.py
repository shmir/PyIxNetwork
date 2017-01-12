"""
Classes and utilities to manage IXN protocol interface objects.

@author yoram@ignissoft.com
"""

from trafficgenerator.tgn_utils import is_true, TgnError
from trafficgenerator.tgn_object import TgnL3

from ixnetwork.ixn_object import IxnObject


def filter_ints_based_on_vlan(interfaces, vlan, count=1):
    """ Filter list of interfaces based on VLAN presence or absence criteria.

    :param interfaces: list of interfaces to filter.
    :param vlan: boolean indicating whether to filter interfaces with or without VLAN.
    :param vlan: number of expected VLANs (note that when vlanEnable == False, vlanCount == 1)
    :return: interfaces with VLAN(s) if vlan == True and vlanCount == count else interfaces without
        VLAN(s).

    :todo: add vlanEnable and vlanCount to interface/range/deviceGroup classes.
    """

    filtered_interfaces = []
    for interface in interfaces:
        if interface.obj_type() == 'interface':
            ixn_vlan = interface.get_object_by_type('vlan')
            vlanEnable = is_true(ixn_vlan.get_attribute('vlanEnable'))
            vlanCount = int(ixn_vlan.get_attribute('vlanCount'))
        elif interface.obj_type() == 'range':
            ixn_vlan = interface.get_object_by_type('vlanRange')
            vlanEnable = is_true(ixn_vlan.get_attribute('enabled'))
            vlanCount = len(ixn_vlan.get_objects_by_type('vlanIdInfo'))
        else:
            ixn_vlan = interface.get_object_by_type('ethernet')
            vlanEnable = is_true(ixn_vlan.get_attribute('useVlans'))
            vlanCount = int(ixn_vlan.get_attribute('vlanCount'))
        if not (vlanEnable ^ vlan) and vlanCount == count:
            filtered_interfaces.append(interface)
    return filtered_interfaces


class IxnInterface(IxnObject):

    def __init__(self, **data):
        """ Create new protocol interface object in the API.

        :param parent: parent interface object.
        """

        data['objType'] = 'interface'
        super(IxnInterface, self).__init__(**data)

    def _create(self):
        """ Create new interface on IxNetwork.

        Set enabled and description (==name).

        :return: interface object reference.
        """

        int_ref = super(IxnInterface, self)._create()
        self.api.setAttributes(int_ref, enabled=True)
        if 'name' in self._data:
            self.api.setAttributes(int_ref, description=self._data['name'])
        return int_ref

    def send_arp_ns(self):
        self.execute('sendArpAndNS')

    def send_rs(self):
        self.execute('sendRs')

    def ping(self, ip):
        rc = self.execute('sendPing', ip)
        if 'failed' in rc:
            raise TgnError(rc)

    def get_name(self):
        return self.get_attribute('description')


class IxnInterfaceL3(IxnObject, TgnL3):

    def ip(self):
        return self.get_attribute('ip')

    def num_ips(self):
        return 1
