"""
Classes and utilities to manage IXN port (vport) objects.

@author yoram@ignissoft.com
"""

import re
import time

from trafficgenerator.tgn_utils import is_local_host
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

    def reserve(self, location, wait_for_up=True, timeout=32):
        self.location = location
        if not is_local_host(location):
            hostname, card, port = location.split('/')
            chassis = self.root.hw.get_chassis(hostname)
            self.set_attributes(commit=True, connectedTo=chassis.obj_ref() + '/card:' + card + '/port:' + port)
            if wait_for_up:
                self.wait_for_state('up', timeout)

    def wait_for_state(self, state='up', timeout=40):
        for _ in range(timeout):
            if self.get_attribute('state') == state:
                return
            time.sleep(1)
        raise TgnError('Failed to reserve port, port is ' + self.get_attribute('state'))

    def release(self):
        if not is_local_host(self.location):
            self.execute('releasePort')

    def send_arp_ns(self):
        self.execute('sendArp')
        self.execute('sendNs')

    def send_rs(self):
        self.execute('sendRs')
