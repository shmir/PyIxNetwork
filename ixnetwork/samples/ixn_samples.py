"""
Stand alone samples for IXN package functionality.

Setup:
Two IXN ports connected back to back.

@author yoram@ignissoft.com
"""

import sys
from os import path
import logging
import time

from ixnetwork.ixn_app import init_ixn
from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics
from trafficgenerator.tgn_utils import ApiType


# API type = tcl, or rest. The default is tcl with DEBUG log messages for best visibility.
api = ApiType.rest
api_server = 'localhost'
api_port = 11009
auth = ('admin', 'admin')
log_level = logging.DEBUG

install_dir = 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'

port1_location = '192.168.65.22/1/1'
port2_location = '192.168.65.22/1/2'

ixn_config_file = path.join(path.dirname(__file__), 'sample_ngpf.ixncfg')


class IxnSamples():

    def setUp(self):
        logger = logging.getLogger('log')
        logger.setLevel(log_level)
        logger.addHandler(logging.StreamHandler(sys.stdout))
        self.ixn = init_ixn(api, logger, install_dir)
        self.ixn.connect(api_server, api_port, auth)

    def tearDown(self):
        for port in self.ixn.root.ports.values():
            port.release()
        self.ixn.disconnect()

    def load_config(self):
        self.ixn.new_config()
        self.ixn.load_config(ixn_config_file)
        self.ixn.commit()

    def objects_access(self):
        self.load_config()

        # You can read all objects by calling the general method get_children
        ports = self.ixn.root.get_children('vport')
        assert(len(ports) == 2)
        # After the objects have been read from IXN you can retrieve them from memory (much faster)
        ports = self.ixn.root.get_objects_by_type('vport')
        assert(len(ports) == 2)
        # If you are not sure if objects have been read from IXN yet (best method for static configurations)
        ports = self.ixn.root.get_objects_or_children_by_type('vport')
        assert(len(ports) == 2)

        # Now we can iterate and print all objects:
        print('Name\tObject Reference\tPython Object')
        for port in ports:
            print('{}\t{}\t{}'.format(port.obj_name(), port.obj_ref(), port))

        # But... frequently used objects (like ports...) can be accessed specifically:
        ports = self.ixn.root.get_ports()
        assert(len(ports) == 2)

        # Now we can iterate and print all objects:
        print('Name\tObject Reference\tPython Object')
        for name, obj in ports.items():
            print('{}\t{}\t{}'.format(name, obj.obj_ref(), obj))

    def get_set_attribute(self):
        self.load_config()
        interface = self.ixn.root.get_ports()['Port 1'].get_interfaces()['Int 1-1']

        # Get all attributes
        print(interface.get_attributes())

        # Get group of attributes
        print(interface.get_attributes('type', 'mtu'))

        # Get specific attribute
        print('mtu: ' + interface.get_attribute('mtu'))

        # Special cases - name and enabled:
        print('name: ' + interface.get_name())
        print('enabled: ' + str(interface.get_enabled()))

        # Set attribute
        interface.set_attributes(mtu=1234)
        assert(int(interface.get_attribute('mtu')) == 1234)

        # And again, special case for enabled
        interface.set_enabled(False)
        assert(not interface.get_enabled())

    def reserve_ports(self):
        self.load_config()
        self.ports = self.ixn.root.get_children('vport')
        self.ixn.reserve({self.ports[0]: port1_location, self.ports[1]: port2_location}, force=True, timeout=40)

    def protocols(self):
        self.reserve_ports()
        self.ixn.send_arp_ns()
        self.ixn.protocols_start()

    def traffic(self):
        self.reserve_ports()
        self.ixn.protocols_start()
        self.ixn.traffic_apply()
        self.ixn.l23_traffic_start()
        time.sleep(8)
        self.ixn.l23_traffic_stop()
        time.sleep(2)
        port_stats = IxnPortStatistics(self.ixn.root)
        port_stats.read_stats()
        ti_stats = IxnTrafficItemStatistics(self.ixn.root)
        ti_stats.read_stats()
        print(port_stats.get_object_stats(list(self.ixn.root.ports.keys())[0]))
        print(port_stats.get_counters('Frames Tx.'))
        print(ti_stats.get_counter(list(self.ixn.root.traffic_items.keys())[0], 'Rx Frames'))

    def quick_test(self):
        global ixn_config_file
        ixn_config_file = path.join(path.dirname(__file__), 'configs/quick_tests.ixncfg')
        self.reserve_ports()
        print(self.ixn.root.get_quick_tests())
        self.ixn.quick_test_apply('QuickTest3')
        print(self.ixn.quick_test_start('QuickTest3', blocking=True))

    def inventory(self):

        chassis = self.ixn.root.hw.get_chassis(port1_location.split('/')[0])
        chassis.get_inventory()

        print('Full Inventory')
        print('=' * len('Full Inventory'))
        for module_name, module in chassis.cards.items():
            print('Card ' + str(module_name))
            for port_name in module.ports:
                print('Port ' + str(port_name))


if __name__ == '__main__':
    ixn = IxnSamples()
    ixn.setUp()
    ixn.traffic()
    ixn.tearDown()
