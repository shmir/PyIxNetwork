"""
"""

import re

from trafficgenerator.tgn_utils import is_local_host
from trafficgenerator.tgn_tcl import tcl_str
from trafficgenerator.tgn_utils import TgnError

from ixn_object import IxnObject


def get_port(obj_ref):
    """
    :param obj_ref: port/deviceGroup child object reference.
    :return: the ancestor port object of the obj_ref.
    """

    root = IxnObject.root
    return root.get_object_by_ref(re.search('(.*[vport|topology]:\d+).*', obj_ref).group(1))


class IxnPort(IxnObject):

    location = None

    def __init__(self, **data):
        data['objType'] = 'vport'
        super(IxnPort, self).__init__(**data)

    def reserve(self, location):
        self.location = location
        if not is_local_host(location):
            port_list = tcl_str(tcl_str(location.replace('/', ' ')))
            vport_list = tcl_str(self.obj_ref())
            self.api.ixnHighLevelCommand('AssignPorts', port_list, tcl_str(), vport_list)
            state = self.get_attribute('state')
            if state != 'up':
                raise TgnError('Failed to reserve port, port is ' + state)

    def release(self):
        if not is_local_host(self.location):
            self.api.ixnHighLevelCommand('UnassignPorts', tcl_str(self.obj_ref()))

    def send_arp_ns(self):
        self.execute('sendArp')
        self.execute('sendNs')

    def send_rs(self):
        self.execute('sendRs')
