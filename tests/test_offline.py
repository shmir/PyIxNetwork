"""
IxNetwork package tests that can run in offline mode.
"""
# pylint: disable=redefined-outer-name
import logging

import pytest

from ixnetwork.ixn_app import IxnApp
from ixnetwork.ixn_interface import IxnInterface
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_protocol import IxnBgpRouterIpV4
from ixnetwork.ixn_topology import IxnDeviceGroup, IxnNgpfEthernet, IxnNgpfIpv4, IxnTopology
from ixnetwork.ixn_traffic import IxnL23TrafficItem
from tests.test_base import load_config, save_config

logger = logging.getLogger("ixnetwork")


def test_hello_world(ixnetwork: IxnApp) -> None:
    """Test connect/disconnect to/from server."""
    logger.info(test_hello_world.__doc__)


def test_load_config(ixnetwork: IxnApp) -> None:
    """Test load/save configuration to/from server."""
    logger.info(test_load_config.__doc__)
    load_config(ixnetwork, "test_config_ngpf")
    save_config(ixnetwork)

    with pytest.raises(Exception):
        load_config(ixnetwork, "invalid")


@pytest.mark.usefixtures("skip_if_linux")
def test_analyze_config_classical(ixnetwork: IxnApp) -> None:
    """Test configuration analysis."""
    logger.info(test_analyze_config_classical.__doc__)

    load_config(ixnetwork, "test_config_classic")

    ixnetwork.root.get_children("vport")
    port1 = ixnetwork.root.get_object_by_name("Port 1")
    logger.info(f"Port1 object reference = {port1.ref}")
    logger.info(f"Port1 name = {port1.name}")
    logger.info(f"Ports = {ixnetwork.root.get_objects_by_type('vport')}")
    logger.info(f"Port 1 all attributes: {port1.get_attributes()}")
    logger.info(f"Port 1 some attributes: {port1.get_attributes('state', 'name')}")
    logger.info(f"Port 1 state: {port1.get_attribute('state')}")

    for port in ixnetwork.root.get_objects_by_type("vport"):
        for interface in port.get_children("interface"):
            logger.info(interface.obj_name(), " = ", interface.obj_ref())
            ipv4 = interface.get_child("ipv4")
            logger.info(ipv4.obj_name(), " = ", ipv4.obj_ref())
            ipv6 = interface.get_child("ipv6")
            assert ipv6 is None

    for port in ixnetwork.root.get_objects_by_type("vport"):
        for ixn_obj in port.get_children():
            logger.info(f"{ixn_obj.name} = {ixn_obj.ref}")

    vports = ixnetwork.root.get_objects_by_type("vport")
    assert len(vports) == 2
    assert isinstance(vports[0], IxnPort)


@pytest.mark.usefixtures("skip_if_linux")
def test_get_children_classical(ixnetwork: IxnApp) -> None:
    """Test get children methods for classical protocols."""
    logger.info(test_get_children_classical.__doc__)

    load_config(ixnetwork, "test_config_classic")

    assert len(ixnetwork.root.get_ports()) == 2

    for port in ixnetwork.root.ports.values():
        assert len(port.get_interfaces()) == 1
        assert len(port.interfaces)

    assert len(ixnetwork.root.get_traffic_items()) == 2
    for ti in ixnetwork.root.traffic_items.values():
        assert len(ti.flow_groups) == 2


@pytest.mark.usefixtures("skip_if_linux")
def test_get_children_ngpf(ixnetwork: IxnApp) -> None:
    """Test get children methods for ngpf protocols."""
    logger.info(test_get_children_ngpf.__doc__)

    load_config(ixnetwork, "test_config_ngpf")

    assert len(ixnetwork.root.get_topologies()) == 2
    for topology in ixnetwork.root.topologies.values():
        assert len(topology.get_device_groups()) == 1


@pytest.mark.usefixtures("skip_if_linux")
def test_build_config_classical(ixnetwork: IxnApp) -> None:
    """Test configuration build with basic objects - ports, interfaces, and traffic items."""
    logger.info(test_build_config_classical.__doc__)

    num_ports = 2
    num_ints = 2
    _build_config_classical(ixnetwork, num_ports, num_ints)

    assert len(ixnetwork.root.ports) == num_ports
    for port in ixnetwork.root.ports.values():
        assert len(port.interfaces) == num_ints

    port1 = list(ixnetwork.root.ports.values())[0]
    port2 = list(ixnetwork.root.ports.values())[1]
    protocols = port1.get_child_static("protocols")
    bgp = protocols.get_child_static("bgp")
    bgp.set_attributes(enabled=True)

    interface1 = list(port1.interfaces.values())[0]
    interface2 = list(port2.interfaces.values())[0]
    ipv4_neighbor = IxnBgpRouterIpV4(parent=bgp, objType="neighborRange")
    ipv4_neighbor.set_attributes(bgpId="1.1.1.1")
    ipv4_neighbor.set_attributes(interfaces=interface1.ref)
    ipv4_neighbor.set_attributes(localIpAddress="0.0.0.0")

    traffic_item = IxnL23TrafficItem(name="One interface")
    traffic_item.set_attributes(trafficType="ipv4")
    endpoint_set = IxnObject(parent=traffic_item, objType="endpointSet")
    sources = [interface1.ref]
    destinations = [interface2.ref]
    endpoint_set.set_attributes(sources=sources, destinations=destinations)

    save_config(ixnetwork)


def test_build_config_ngpf(ixnetwork: IxnApp) -> None:
    """Test configuration build with topologies."""
    logger.info(test_build_config_ngpf.__doc__)

    _build_config_classical(ixnetwork, num_ports=2, num_ints=0)

    for index, port in enumerate(ixnetwork.root.ports.values()):
        topo_name = f"Topo-{index + 1}"
        logger.info(f"Create Topo {topo_name}")
        topo = IxnTopology(name=topo_name)
        topo.set_attributes(vports=[port.ref])
        ixn_dg = IxnDeviceGroup(parent=topo)
        ixn_dg.set_attributes(multiplier=1)
        ixn_eth = IxnNgpfEthernet(parent=ixn_dg)
        ixn_eth.get_attribute("mac")
        IxnNgpfIpv4(parent=ixn_eth)


#
# Auxiliary functions, no testing inside.
#


def _build_config_classical(ixnetwork: IxnApp, num_ports: int, num_ints: int) -> None:
    ixnetwork.new_config()
    logger.info("Build config with {num_ports} ports and {num_ints} interfaces per port")
    for port_num in range(1, num_ports + 1):
        port_name = f"Port-{port_num}"
        logger.info(f"Create Port {port_name}")
        port = IxnPort(parent=ixnetwork.root, name=port_name)
        for int_num in range(1, num_ints + 1):
            int_name = f"{port_name}-Int-{int_num}"
            logger.info(f"Create Interface {int_name}")
            ixn_int = IxnInterface(parent=port, name=int_name)
            ixn_int_eth = ixn_int.get_child_static("ethernet")
            mac_address = f"00:11:22:33:{port_num}:{int_num}"
            ixn_int_eth.set_attributes(macAddress=mac_address)
            ixn_int_ip = IxnObject(parent=ixn_int, objType="ipv4")
            ip = f"1.2.{port_num}.{int_num}"
            ixn_int_ip.set_attributes(ip=ip)
    ixnetwork.commit()
