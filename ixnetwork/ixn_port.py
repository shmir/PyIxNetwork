"""
Classes and utilities to manage IXN port (vport) objects.

@author yoram@ignissoft.com
"""

import re
import time

from trafficgenerator.tgn_utils import is_local_host
from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject


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
        super(self.__class__, self).__init__(**data)

    def reserve(self, location=None, force=False, wait_for_up=True, timeout=40):
        """ Reserve port and optionally wait for port to come up.

        :param location: port location as 'ip/module/port'. If None, the location will be taken from the configuration.
        :param force: whether to revoke existing reservation (True) or not (False) - NOT SUPPORTED YET.
        :param wait_for_up: True - wait for port to come up, False - return immediately.
        :param timeout: how long (seconds) to wait for port to come up.
        """

        if location and not is_local_host(location):
            hostname, card, port = location.split('/')
            chassis = self.root.hw.get_chassis(hostname)
            self.set_attributes(commit=True, connectedTo=chassis.obj_ref() + '/card:' + card + '/port:' + port)

        self.location = self.get_attribute('connectedTo')
        if self.location and wait_for_up:
            self.wait_for_states(timeout, 'up')

    def wait_for_states(self, timeout=40, *states):
        for _ in range(timeout):
            if self.get_attribute('state') in states:
                return
            time.sleep(1)
        raise TgnError('Failed to reserve port, port is ' + self.get_attribute('state'))

    def is_online(self):
        """
        :returns: Port link status.
                  True - port is up.
                  False - port is offline.
        """

        return self.get_attribute('state').lower() == 'up'

    def release(self):
        if not is_local_host(self.location):
            self.execute('releasePort')

    def get_interfaces(self):
        """
        :return: dictionary {name: object} of all interfaces of the port.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('interface')}

    def send_arp_ns(self):
        self.execute('sendArp')
        self.execute('sendNs')

    def send_rs(self):
        self.execute('sendRs')
