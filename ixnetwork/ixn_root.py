"""
@author yoram@ignissoft.com
"""

import sys
import time

from trafficgenerator.tgn_utils import TgnError

from ixnetwork.ixn_object import IxnObject


class IxnRoot(IxnObject):

    def __init__(self, **data):
        super(IxnRoot, self).__init__(**data)

    def get_ports(self):
        """
        :return: dictionary {name: object} of all vport.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('vport')}

    def get_topologies(self):
        """
        :return: dictionary {name: object} of all topologies.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('topology')}

    def get_traffic_items(self):
        """
        :return: dictionary {name: object} of all traffic items.
        """

        traffic = self.get_child_static('traffic')
        return {o.obj_name(): o for o in traffic.get_objects_or_children_by_type('trafficItem')}

    def get_quick_tests(self, *types):
        """
        :param types: list of requested types, empty list will return all quick tests.
        :return: dictionary {name: object} of requested quick tests.
        """

        quickTest = self.get_child_static('quickTest')
        return {o.obj_name(): o for o in quickTest.get_objects_or_children_by_type(*types) if
                o.obj_name() != '::ixNet::OBJ-/quickTest/globals'}

    def regenerate(self, *traffic_items):
        traffic = self.get_child_static('traffic')
        self.api.regenerate(traffic, *traffic_items)

    def l23_traffic_start(self, traffic_items, blocking=False):
        traffic = self.get_child_static('traffic')
        self.api.startStatelessTraffic(traffic, traffic_items)
        self._wait_traffic_states(16, 'started')
        if blocking:
            self._wait_traffic_states(int(2.628e+6), 'stopped')
        else:
            time.sleep(2)

    def l23_traffic_stop(self, *traffic_items):
        traffic = self.get_child_static('traffic')
        self.api.stopStatelessTraffic(traffic, *traffic_items)
        self._wait_traffic_states(16, 'stopped', 'unapplied')

    def _wait_traffic_states(self, timeout, *states):
        for _ in range(timeout):
            if self.get_child_static('traffic').get_attribute('state') in states:
                return
            time.sleep(1)
        raise TgnError('Traffic failed to reach {} state, traffic is {} after {} seconds'.
                       format(states, self.get_child_static('traffic').get_attribute('state'), timeout))
