"""
Classes and utilities to manage IXN port (vport) objects.
"""

import time
from typing import Optional, Dict, Callable

from trafficgenerator.tgn_utils import is_local_host
from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_interface import IxnInterface


class IxnPort(IxnObject):

    def __init__(self, **data):
        data['objType'] = 'vport'
        data['parent'] = self.root
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
            raise TgnError(f'Physical port {location} unreachable')
        self.set_attributes(commit=True, connectedTo=phy_port.ref)

        while self.get_attribute('connectedTo') == '::ixNet::OBJ-null':
            time.sleep(1)

        if wait_for_up:
            self.wait_for_up(timeout)

    def release(self):
        def _release_if_connected():
            if self.get_attribute('connectedTo') == self.api.null:
                return
            self.set_attributes(commit=True, connectedTo=self.api.null)
            self.execute('releasePort', [self.ref])

        self.wait_for_states(40, 'unassigned', wait_callback=_release_if_connected)

    def wait_for_up(self, timeout: Optional[int] = 40):
        """ Wait until port is up and running, including all parameters (admin state, oper state, license etc.).

        :param timeout: max time to wait for port up.
        """
        self.wait_for_states(timeout, 'up')

    def wait_for_states(self, timeout: Optional[int] = 40, *states, wait_callback: Optional[Callable] = type(None)):
        """ Wait until port reaches one of the requested states.

        :param timeout: max time to wait for requested port states.
        :param states: list of states to wait for.
        :param wait_callback: callback to invoke at the start of each wait cycle.
        """
        for n in range(1, timeout+1):
            wait_callback()
            state = self.get_attribute('state')
            if state in states:
                return
            if n == timeout:
                break
            time.sleep(1)
        stateDetail = self.get_attribute('stateDetail')

        try:
            connectionStateField = 'connectionState'
            connectionState = self.get_attribute('connectionState')
        except TgnError: # older API server does not provide connectionState
            connectionStateField = 'connectionStatus'
            connectionState = self.get_attribute('connectionStatus')

        raise TgnError(f'Failed to reach states {states}, port state is {state} after {timeout} seconds\n'
                       f'stateDetail is {stateDetail} {connectionStateField} is {connectionState}, ')

    def is_online(self):
        """
        :returns: Port link status.
                  True - port is up.
                  False - port is offline.
        """

        return self.get_attribute('state').lower() == 'up'

    def get_interfaces(self) -> Dict[str, IxnInterface]:
        """
        :return: dictionary {name: object} of all interfaces of the port.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('interface')}
    interfaces = property(get_interfaces)

    def send_arp_ns(self) -> None:
        self.api.execute('sendArp', None, False, self.ref)
        self.api.execute('sendNs', None, False, self.ref)

    def send_rs(self) -> None:
        self.api.execute('sendRs', None, False, self.ref)
