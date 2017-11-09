"""
Classes and utilities to manage IXN port (vport) objects.

@author yoram@ignissoft.com
"""

import time

from trafficgenerator.tgn_utils import is_local_host
from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject


def get_port(obj_ref):
    """
    :param obj_ref: port/deviceGroup child object reference.
    :return: the ancestor port object of the obj_ref.
    """

    raise Exception('Poor implementation')
#     root = IxnObject.root
#     return root.get_object_by_ref(re.search('(.*[vport|topology]:\d+).*', obj_ref).group(1))


class IxnPort(IxnObject):

    def __init__(self, **data):
        data['objType'] = 'vport'
        super(self.__class__, self).__init__(**data)

    def reserve(self, location=None, force=False, wait_for_up=True, timeout=80):
        """ Reserve port and optionally wait for port to come up.

        :param location: port location as 'ip/module/port'. If None, the location will be taken from the configuration.
        :param force: whether to revoke existing reservation (True) or not (False).
        :param wait_for_up: True - wait for port to come up, False - return immediately.
        :param timeout: how long (seconds) to wait for port to come up.
        """

        if not location or is_local_host(location):
            return

        hostname, card, port = location.split('/')
        chassis = self.root.hw.get_chassis(hostname)

        # todo - test if port owned by me.
        if force:
            chassis.get_card(int(card)).get_port(int(port)).release()

        self.set_attributes(commit=True, connectedTo=chassis.get_card(int(card)).get_port(int(port)).ref)

        while self.get_attribute('connectedTo') == '::ixNet::OBJ-null':
            time.sleep(1)

        if wait_for_up:
            self.wait_for_states(timeout, 'up')

    def wait_for_states(self, timeout=40, *states):
        for _ in range(timeout):
            if self.get_attribute('state') in states:
                return
            time.sleep(1)
        raise TgnError('Failed to reserve port, port is {} after {} seconds'.
                       format(self.get_attribute('state'), timeout))

    def is_online(self):
        """
        :returns: Port link status.
                  True - port is up.
                  False - port is offline.
        """

        return self.get_attribute('state').lower() == 'up'

    def release(self):
        self.execute('releasePort', [self.ref])
        self.set_attributes(commit=True, connectedTo=self.api.null)

    def get_interfaces(self):
        """
        :return: dictionary {name: object} of all interfaces of the port.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('interface')}

    def send_arp_ns(self):
        self.execute('sendArp', self.ref)
        self.execute('sendNs', self.ref)

    def send_rs(self):
        self.execute('sendRs', self.ref)
