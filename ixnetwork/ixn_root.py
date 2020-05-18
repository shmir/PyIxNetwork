"""
@author yoram@ignissoft.com
"""

from __future__ import annotations

import time
from io import BytesIO

from typing import Dict, Optional, Union

from trafficgenerator.tgn_utils import TgnError, is_true

from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_topology import IxnTopology
from ixnetwork.ixn_traffic import IxnTrafficItem
from ixnetwork.api.ixn_rest import IxnRestWrapper


class IxnRoot(IxnObject):

    def __init__(self, **data):
        super(IxnRoot, self).__init__(**data)

    def get_ports(self) -> Dict[str, IxnPort]:
        """ Returns all vports. """
        return {o.name: o for o in self.get_objects_or_children_by_type('vport')}
    ports = property(get_ports)

    def get_topologies(self) -> Dict[str, IxnTopology]:
        """ Returns all topologies. """
        return {o.name: o for o in self.get_objects_or_children_by_type('topology')}
    topologies = property(get_topologies)

    def get_traffic_items(self) -> Dict[str, IxnTrafficItem]:
        """ Returns all traffic items. """
        traffic = self.get_child_static('traffic')
        return {o.name: o for o in traffic.get_objects_or_children_by_type('trafficItem')}
    traffic_items = property(get_traffic_items)

    def get_quick_tests(self) -> Dict[str, IxnQuickTest]:
        """ Returns list of quick tests. """
        quickTest = self.get_child_static('quickTest')
        return {o.name: o for o in quickTest.get_objects_or_children_by_type() if type(o) == IxnQuickTest}
    quick_tests = property(get_quick_tests)

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


class IxnQuickTest(IxnObject):

    def __init__(self, **data) -> None:
        data['objType'] = 'quickTest'
        super(self.__class__, self).__init__(**data)

    def apply(self) -> None:
        """ Apply QuickTest. """
        self.execute('apply', self.ref)

    def start(self, blocking: Optional[bool] = False, timeout: Optional[int] = 3600) -> None:
        """ Start QuickTest.

        :param blocking: start test and wait for test to finish if True else start test and return immediately
        :param timeout: if blocking is True, how long to wait for test finish
        """
        self.execute('start', self.ref)
        if blocking:
            return self.wait_quick_test_status(False, timeout)

    def stop(self) -> None:
        """ Apply QuickTest. """
        self.execute('stop', self.ref)

    def wait_quick_test_status(self, status: Optional[bool] = False, timeout: int = 3600) -> None:
        """ Wait for QuickTest isRunning status to reach state - True or False.

        :param status: required status True or False
        :param timeout: how long to wait for test status
        """
        results = self.get_child_static('results')
        for _ in range(timeout):
            isRunning = results.get_attribute('isRunning')
            if is_true(isRunning) == status:
                return isRunning
            time.sleep(1)
        raise TgnError(f'Quick test failed, quick test running state is {isRunning} after {timeout} seconds')

    def get_report(self, report_path: Union[str, BytesIO]) -> None:
        """ Get QuickTest report from server to local machine.

        :param report_path: full path to destination local path.
        """
        if type(self.api) is IxnRestWrapper:
            report_url = self.execute('generateReport', self.ref)
            self.api.getFile(report_url, report_path)
        else:
            self.set_attributes(commit=True, outputPath=report_path)
            self.execute('generateReport', self.ref)
