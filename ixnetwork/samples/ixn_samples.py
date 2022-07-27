"""
Stand-alone samples for IXN package functionality.

Setup:
Two IXN ports connected back to back.
"""
import logging
import sys
import time
from pathlib import Path

from trafficgenerator.tgn_utils import ApiType

from ixnetwork.ixn_app import init_ixn
from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics

log_level = logging.DEBUG

# API type = tcl, or rest. The default is tcl with DEBUG log messages for best visibility.
api = ApiType.rest
chassis_ip = "172.30.150.123"
api_server = "localhost"
if api == ApiType.rest:
    api_port = 11009 if api_server == "localhost" else 443
else:
    api_port = 8009
auth = ["admin", "admin"]

port1_location = f"{chassis_ip}/1/1"
port2_location = f"{chassis_ip}/1/2"

license_server = ["172.30.150.123"]

install_dir = "C:/Program Files (x86)/Ixia/IxNetwork/9.10.2007.7"

ixn_config_file = Path(__file__).parent.joinpath("test_config_classic.ixncfg")

logger = logging.getLogger("log")
logger.setLevel(log_level)
logger.addHandler(logging.StreamHandler(sys.stdout))
ixn = init_ixn(api, logger, install_dir)
ixn.connect(api_server, api_port, auth)
if api == ApiType.rest:
    ixn.api.set_licensing(licensing_servers=license_server)


def load_config(config_file_path: Path) -> None:
    """Load configuration."""
    ixn.new_config()
    ixn.load_config(config_file_path)
    ixn.commit()


def disconnect() -> None:
    """Release ports and disconnect."""
    for port in ixn.root.ports.values():
        port.release()
    ixn.disconnect()


def objects_access() -> None:
    """Access to different objects, using multiple methods."""
    # You can read all objects by calling the general method get_children
    ports = ixn.root.get_children("vport")
    assert len(ports) == 2
    # After the objects have been read from IXN you can retrieve them from memory (much faster)
    ports = ixn.root.get_objects_by_type("vport")
    assert len(ports) == 2
    # If you are not sure if objects have been read from IXN yet (best method for static configurations)
    ports = ixn.root.get_objects_or_children_by_type("vport")
    assert len(ports) == 2

    # Now we can iterate and logger.info all objects:
    logger.info("Name\tObject Reference\tPython Object")
    for port in ports:
        logger.info(f"{port.name}\t{port.ref}\t{port}")

    # But, frequently used objects (like ports, protocols, etc.) can be accessed specifically:
    ports = ixn.root.ports
    assert len(ports) == 2

    # Now we can iterate and logger.info all objects:
    logger.info("Name\tObject Reference\tPython Object")
    for name, obj in ports.items():  # type: ignore
        logger.info(f"{name}\t{obj.ref}\t{obj}")


def get_set_attribute() -> None:
    """Get and set attributes."""
    interface = ixn.root.get_ports()["Port 1"].get_interfaces()["Int 1-1"]

    # Get all attributes
    logger.info(interface.get_attributes())

    # Get group of attributes
    logger.info(interface.get_attributes("type", "mtu"))

    # Get specific attribute
    logger.info("mtu: " + interface.get_attribute("mtu"))

    # Special cases - name and enabled:
    logger.info("name: " + interface.get_name())
    logger.info("enabled: " + str(interface.get_enabled()))

    # Set attribute
    interface.set_attributes(mtu=1234)
    assert int(interface.get_attribute("mtu")) == 1234

    # And again, special case for enabled
    interface.set_enabled(False)
    assert not interface.get_enabled()


def reserve_ports() -> None:
    """Reserve ports."""
    ports = list(ixn.root.ports.values())
    ixn.reserve({ports[0]: port1_location, ports[1]: port2_location}, force=True, timeout=40)


def protocols() -> None:
    """Start protocols."""
    ixn.send_arp_ns()
    ixn.protocols_start()


def traffic() -> None:
    """Run traffic and get statistics."""
    ixn.protocols_start()
    ixn.traffic_apply()
    ixn.l23_traffic_start()
    time.sleep(8)
    ixn.l23_traffic_stop()
    time.sleep(2)
    port_stats = IxnPortStatistics()
    port_stats.read_stats()
    ti_stats = IxnTrafficItemStatistics()
    ti_stats.read_stats()
    logger.info(port_stats.get_object_stats(list(ixn.root.ports.keys())[0]))
    logger.info(port_stats.get_counters("Frames Tx."))
    logger.info(ti_stats.get_counter(list(ixn.root.traffic_items.keys())[0], "Rx Frames"))


def inventory() -> None:
    """Get and print inventory."""
    chassis = ixn.root.hw.get_chassis(port1_location.split("/")[0])
    chassis.get_inventory()

    logger.info("Full Inventory")
    logger.info("=" * len("Full Inventory"))
    for module_name, module in chassis.cards.items():
        logger.info("Card " + str(module_name))
        for port_name in module.ports:
            logger.info("Port " + str(port_name))


if __name__ == "__main__":
    inventory()
    load_config(ixn_config_file)
    objects_access()
    get_set_attribute()
    reserve_ports()
    protocols()
    traffic()
    disconnect()
