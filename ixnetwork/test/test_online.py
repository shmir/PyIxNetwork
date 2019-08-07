"""
IxNetwork package tests that require actual IxNetwork chassis and active ports.

Note that in many places there are (relatively) long delays to make sure the tests work in all setups.

Test setup:
Two IXN ports connected back to back.

@author yoram@ignissoft.com
"""

import json
import time
import pytest

from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics, IxnFlowStatistics
from ixnetwork.test.test_base import TestIxnBase


class TestIxnOnline(TestIxnBase):

    ports = []

    def setup(self):
        if not self.locations:
            pytest.skip('no chassis for online test')
        super(self.__class__, self).setup()

    def test_reserve_ports(self, api):
        self._reserve_ports('test_config', wait_for_up=False)
        for port in self.ports:
            assert port.get_attribute('state').lower() != 'unassigned'

    def test_release_ports(self, api):
        self._reserve_ports('test_config')
        for port in self.ports:
            port.release()
        for port in self.ports:
            assert port.get_attribute('state').lower() == 'unassigned'

    def test_ports_online(self, api):
        self._reserve_ports('test_config')
        for port in self.ports:
            assert(port.is_online())

    def test_reload(self, api):

        self._reserve_ports('test_config')

        for port in self.ports:
            port.release()

        # swap order or ports
        self.locations[0], self.locations[1] = self.locations[1], self.locations[0]

        self._reserve_ports('test_config')

    def test_interfaces(self, api):
        if self._is_linux_server():
            pytest.skip('server does not support classical protocols')
        self._reserve_ports('test_config')
        for port in self.ports:
            port.send_arp_ns()
            for interface in port.get_children('interface'):
                gateway = interface.get_child('ipv4', 'ipv6').get_attribute('gateway')
                interface.ping(gateway)

    def test_protocols_actions(self, api):
        if self._is_linux_server():
            pytest.skip('server does not support classical protocols')
        self._reserve_ports('test_config')
        self.ixn.send_arp_ns()
        self.ixn.protocols_start()
        time.sleep(16)
        self.ixn.protocols_stop()
        time.sleep(16)
        self.ixn.protocol_start('ospf')
        time.sleep(16)
        self.ixn.protocol_stop('ospf')

    def test_gui_traffic(self, api):
        # Sometimes ARP fails on IxVM? To be sure, send automatic ARP (seems more stable...)
        self._reserve_ports('test_config')
        self.ixn.protocols_start()
        time.sleep(4)
        self.ixn.regenerate()
        self.ixn.traffic_apply()
        self.ixn.l23_traffic_start()
        time.sleep(8)
        self.ixn.l23_traffic_stop()
        time.sleep(4)
        port_stats = IxnPortStatistics(self.ixn.root)
        port_stats.read_stats()
        print(json.dumps(port_stats.get_all_stats(), indent=1))
        print(json.dumps(port_stats.get_object_stats('Port 1'), indent=1))
        assert(int(port_stats.get_stat('Port 1', 'Frames Tx.')) >= 1200)
        self.ixn.l23_traffic_start(blocking=True)
        time.sleep(4)
        ti_stats = IxnTrafficItemStatistics(self.ixn.root)
        ti_stats.read_stats()
        print(json.dumps(ti_stats.get_all_stats(), indent=1))
        print(json.dumps(ti_stats.get_object_stats('Traffic Item 1'), indent=1))
        assert(int(ti_stats.get_object_stats('Traffic Item 1')['Tx Frames']) == 1600)
        flow_stats = IxnFlowStatistics(self.ixn.root)
        flow_stats.read_stats()
        assert(int(flow_stats.get_stat('Port 2/Port 1/Traffic Item 1', 'Tx Frames')) == 800)
        self._save_config()

    def test_quick_test(self, api):
        self._reserve_ports('quick_test')
        self.ixn.quick_test_apply('QuickTest1')
        self.ixn.quick_test_start('QuickTest1', blocking=True)
        self.ixn.quick_test_stop('QuickTest1')

    def _reserve_ports(self, config_file, wait_for_up=True):
        self._load_config(config_file)
        self.ports = self.ixn.root.get_children('vport')
        self.ixn.root.get_object_by_name('Port 1').reserve(self.locations[0], wait_for_up=False)
        self.ixn.root.get_object_by_name('Port 2').reserve(self.locations[1], wait_for_up=False)
        if wait_for_up:
            for port in self.ports:
                port.wait_for_up(80)
