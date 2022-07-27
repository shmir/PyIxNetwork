"""
Classes and utilities to manage IXN port (vport) objects.
"""

import time
from typing import Callable, Dict, Optional

from trafficgenerator.tgn_utils import TgnError, is_local_host

from ixnetwork.ixn_interface import IxnInterface
from ixnetwork.ixn_object import IxnObject


class IxnPort(IxnObject):
    """Represents IxNetwork vport."""

    def __init__(self, **data):
        data["objType"] = "vport"
        data.pop("parent", None)
        super().__init__(parent=self.root, **data)

    def reserve(self, location=None, force=False, wait_for_up=True, timeout=80):
        """Reserve port and optionally wait for port to come up.

        :param location: port location as 'ip/module/port'. If None, the location will be taken from the configuration.
        :param force: whether to revoke existing reservation (True) or not (False).
        :param wait_for_up: True - wait for port to come up, False - return immediately.
        :param timeout: how long (seconds) to wait for port to come up.
        """
        if not location or is_local_host(location):
            return

        hostname, card, port = location.split("/")
        chassis = self.root.hw.get_chassis(hostname)

        # TODO: test if port owned by me.
        if force:
            chassis.get_card(int(card)).get_port(int(port)).release()

        try:
            phy_port = chassis.get_card(int(card)).get_port(int(port))
        except KeyError as err:
            raise TgnError(f"Physical port {location} unreachable") from err
        self.set_attributes(commit=True, connectedTo=phy_port.ref)

        while self.get_attribute("connectedTo") == "::ixNet::OBJ-null":
            time.sleep(1)

        if wait_for_up:
            self.wait_for_up(timeout)

    def release(self) -> None:
        def _release_if_connected() -> None:
            if self.get_attribute("connectedTo") == self.api.null:
                return
            self.set_attributes(commit=True, connectedTo=self.api.null)
            self.execute("releasePort", [self.ref])

        self.wait_for_states(40, "unassigned", wait_callback=_release_if_connected)

    def wait_for_up(self, timeout: Optional[int] = 40):
        """Wait until port is up and running, including all parameters (admin state, operating state, license etc.).

        :param timeout: max time to wait for port up.
        """
        self.wait_for_states(timeout, "up")

    # pylint: disable=keyword-arg-before-vararg
    def wait_for_states(self, timeout: Optional[int] = 40, *states, wait_callback: Optional[Callable] = type(None)):
        """Wait until port reaches one of the requested states.

        :param timeout: max time to wait for requested port states.
        :param states: list of states to wait for.
        :param wait_callback: callback to invoke at the start of each wait cycle.
        """
        state = None
        for n in range(1, timeout + 1):
            wait_callback()
            state = self.get_attribute("state")
            if state in states:
                return
            if n == timeout:
                break
            time.sleep(1)
        state_detail = self.get_attribute("stateDetail")

        try:
            connection_state_field = "connectionState"
            connection_state = self.get_attribute(connection_state_field)
        except TgnError:
            # older API server does not provide connectionState
            connection_state_field = "connectionStatus"
            connection_state = self.get_attribute(connection_state_field)

        raise TgnError(
            f"Failed to reach states {states}, port state is {state} after {timeout} seconds\n"
            f"stateDetail is {state_detail} {connection_state_field} is {connection_state}, "
        )

    def is_online(self) -> bool:
        """Return True if port state is up, else returns False."""
        return self.get_attribute("state").lower() == "up"

    def get_interfaces(self) -> Dict[str, IxnInterface]:
        """Return dictionary {name: object} of all interfaces of the port."""
        return {o.obj_name(): o for o in self.get_objects_or_children_by_type("interface")}

    interfaces = property(get_interfaces)

    def send_arp_ns(self) -> None:
        self.api.execute("sendArp", None, False, self.ref)
        self.api.execute("sendNs", None, False, self.ref)

    def send_rs(self) -> None:
        self.api.execute("sendRs", None, False, self.ref)
