"""
IxNetwork package tests that require actual IxNetwork chassis and active ports.

Note that in many places there are (relatively) long delays to make sure the tests work in all setups.

Test setup:
Two IXN ports connected back to back.
"""

import json
import time
import logging
from typing import List

import pytest

from ixnetwork.ixn_app import IxnApp
from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics, IxnFlowStatistics
from .test_base import load_config, reserve_ports


logger = logging.getLogger('ixnetwork')


def test_reserve_ports(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test reserve ports. """
    logger.info(test_reserve_ports.__doc__)

    load_config(ixnetwork, 'test_config_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=False)
    for port in ixnetwork.root.ports.values():
        assert port.get_attribute('state').lower() != 'unassigned'


def test_release_ports(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test release ports. """
    logger.info(test_release_ports.__doc__)

    load_config(ixnetwork, 'test_config_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=False)
    for port in ixnetwork.root.ports.values():
        port.release()
    for port in ixnetwork.root.ports.values():
        assert port.get_attribute('state').lower() == 'unassigned'


def test_ports_online(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test ports on line. """
    logger.info(test_release_ports.__doc__)

    load_config(ixnetwork, 'test_config_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    for port in ixnetwork.root.ports.values():
        assert(port.is_online())


@pytest.mark.usefixtures('skip_if_linux')
def test_interfaces(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test arp and ping.

    :todo: the test sends the commands but does not test the results.
    """
    logger.info(test_interfaces.__doc__)

    load_config(ixnetwork, 'test_config_classic')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    for port in ixnetwork.root.ports.values():
        port.send_arp_ns()
        for interface in port.interfaces.values():
            gateway = interface.get_child('ipv4', 'ipv6').get_attribute('gateway')
            interface.ping(gateway)


@pytest.mark.usefixtures('skip_if_linux')
def test_protocols_actions(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test protocol[s] start and stop operation.

    :todo: the test sends the commands but does not test the results.
    """
    logger.info(test_protocols_actions.__doc__)

    load_config(ixnetwork, 'test_config_classic')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    ixnetwork.send_arp_ns()
    ixnetwork.protocols_start()
    time.sleep(16)
    ixnetwork.protocols_stop()
    time.sleep(16)
    ixnetwork.protocol_start('ospf')
    time.sleep(16)
    ixnetwork.protocol_stop('ospf')


def test_gui_traffic(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test traffic operations equivalent to GUI operations.

    Sometimes ARP fails on IxVM? To be sure, send automatic ARP (seems more stable)
    """
    logger.info(test_gui_traffic.__doc__)

    load_config(ixnetwork, 'test_config_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    ixnetwork.protocols_start()
    time.sleep(4)

    ixnetwork.regenerate()
    ixnetwork.traffic_apply()
    ixnetwork.l23_traffic_start()
    time.sleep(8)
    ixnetwork.l23_traffic_stop()
    time.sleep(4)
    port_stats = IxnPortStatistics()
    port_stats.read_stats()
    print(json.dumps(port_stats.get_all_stats(), indent=1))
    print(json.dumps(port_stats.get_object_stats('Port 1'), indent=1))
    assert(int(port_stats.get_stat('Port 1', 'Frames Tx.')) >= 1200)
    ixnetwork.l23_traffic_start(blocking=True)
    time.sleep(4)
    ti_stats = IxnTrafficItemStatistics()
    ti_stats.read_stats()
    print(json.dumps(ti_stats.get_all_stats(), indent=1))
    print(json.dumps(ti_stats.get_object_stats('Traffic Item 1'), indent=1))
    assert(int(ti_stats.get_object_stats('Traffic Item 1')['Tx Frames']) == 1600)
    flow_stats = IxnFlowStatistics()
    flow_stats.read_stats()
    assert(int(flow_stats.get_stat('Port 2/Port 1/Traffic Item 1', 'Tx Frames')) == 800)


def test_quick_test(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test quick tests operations.

    :todo: the test sends the commands but does not test the results.
    """
    logger.info(test_quick_test.__doc__)

    load_config(ixnetwork, 'quick_test_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    ixnetwork.protocols_start()
    time.sleep(4)
    ixnetwork.quick_test_apply('QuickTest1')
    ixnetwork.quick_test_start('QuickTest1', blocking=True)
    ixnetwork.quick_test_stop('QuickTest1')


def test_dd_stats(ixnetwork: IxnApp, locations: List[str]) -> None:
    """ Test traffic operations equivalent to GUI operations.

    Sometimes ARP fails on IxVM? To be sure, send automatic ARP (seems more stable)
    """
    logger.info(test_gui_traffic.__doc__)

    load_config(ixnetwork, 'test_dd_ngpf')
    reserve_ports(ixnetwork, locations, wait_for_up=True)
    ixnetwork.protocols_start()
    time.sleep(4)

    ixnetwork.regenerate()
    ixnetwork.traffic_apply()
    # ixnetwork.l23_traffic_start()
    # time.sleep(8)
    # ixnetwork.l23_traffic_stop()
    # time.sleep(4)
    # port_stats = IxnPortStatistics()
    # port_stats.read_stats()
    # print(json.dumps(port_stats.get_all_stats(), indent=1))
    # print(json.dumps(port_stats.get_object_stats('Port 1'), indent=1))
    # assert(int(port_stats.get_stat('Port 1', 'Frames Tx.')) >= 1200)
    # ixnetwork.l23_traffic_start(blocking=True)
    # time.sleep(4)
    # ti_stats = IxnTrafficItemStatistics()
    # ti_stats.read_stats()
    # print(json.dumps(ti_stats.get_all_stats(), indent=1))
    # print(json.dumps(ti_stats.get_object_stats('Traffic Item 1'), indent=1))
    # assert(int(ti_stats.get_object_stats('Traffic Item 1')['Tx Frames']) == 1600)
    # flow_stats = IxnFlowStatistics()
    # flow_stats.read_stats()
    # assert(int(flow_stats.get_stat('Port 2/Port 1/Traffic Item 1', 'Tx Frames')) == 800)
