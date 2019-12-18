"""
Classes and utilities to manage IXN port (vport) objects.

@author yoram@ignissoft.com
"""

import time

from trafficgenerator.tgn_utils import is_local_host
from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject


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

        try:
            phy_port = chassis.get_card(int(card)).get_port(int(port))
        except KeyError as _:
            raise TgnError('Physical port {} unreachable'.format(location))
        self.set_attributes(commit=True, connectedTo=phy_port.ref)

        while self.get_attribute('connectedTo') == '::ixNet::OBJ-null':
            time.sleep(1)

        if wait_for_up:
            self.wait_for_up(timeout)

    def release(self):
        if self.get_attribute('connectedTo') != self.api.null:
            self.set_attributes(commit=True, connectedTo=self.api.null)
        self.execute('releasePort', [self.ref])
        self.wait_for_states(4, 'unassigned')

    def wait_for_up(self, timeout=40):
        """ Wait until port is up and running, including all parameters (admin state, oper state, license etc.).

        :param timeout: max time to wait for port up.
        """
        self.wait_for_states(timeout, 'up')

    def wait_for_states(self, timeout=40, *states):
        """ Wait until port reaches one of the requested states.

        :param timeout: max time to wait for requested port states.
        """

        state = self.get_attribute('state')
        for _ in range(timeout):
            if state in states:
                return
            time.sleep(1)
            state = self.get_attribute('state')
        stateDetail = self.get_attribute('stateDetail')
        connectionState = self.get_attribute('connectionState')
        raise TgnError('Failed to reach states {}, port state is {} after {} seconds\n'
                       'stateDetail is {} connectionState is {}, '.
                       format(states, state, timeout, stateDetail, connectionState))

    def is_online(self):
        """
        :returns: Port link status.
                  True - port is up.
                  False - port is offline.
        """

        return self.get_attribute('state').lower() == 'up'

    def get_interfaces(self):
        """
        :return: dictionary {name: object} of all interfaces of the port.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('interface')}

    def send_arp_ns(self):
        self.api.execute('sendArp', None, False, self.ref)
        self.api.execute('sendNs', None, False, self.ref)

    def send_rs(self):
        self.api.execute('sendRs', None, False, self.ref)
