"""
Stand alone samples for IXN package functionality.

Setup:
Two IXN ports connected back to back.

@author yoram@ignissoft.com
"""

import sys
from os import path
import unittest
import logging
import time

from ixnetwork.ixn_app import init_ixn
from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics
from trafficgenerator.tgn_utils import ApiType


# API type = tcl, python or rest. The default is tcl with DEBUG log messages for best visibility.
api = ApiType.tcl
tcl_port = 8009
log_level = logging.DEBUG

install_dir = 'C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA'

port1_location = '192.168.42.61/2/1'
port2_location = '192.168.42.61/2/2'

ixn_config_file = path.join(path.dirname(__file__), 'configs/test_config.ixncfg')


class IxnSamples(unittest.TestCase):

    def setUp(self):
        super(IxnSamples, self).setUp()
        logger = logging.getLogger('log')
        logger.setLevel(log_level)
        logger.addHandler(logging.StreamHandler(sys.stdout))
        self.ixn = init_ixn(api, logger, install_dir)
        self.ixn.connect(tcl_port=tcl_port)

    def tearDown(self):
        self.ixn.disconnect()
        super(IxnSamples, self).tearDown()

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
        self.ixn.reserve({self.ixn.root.get_object_by_name('Port 1'): port1_location,
                          self.ixn.root.get_object_by_name('Port 2'): port2_location}, force=True)

    def protocols(self):
        self.reserve_ports()
        self.ixn.send_arp_ns()
        self.ixn.protocols_start()

    def traffic(self):
        self.reserve_ports()
        self.ixn.traffic_apply()
        self.ixn.l23_traffic_start()
        time.sleep(8)
        self.ixn.l23_traffic_stop()
        time.sleep(2)
        port_stats = IxnPortStatistics(self.ixn.root)
        port_stats.read_stats()
        ti_stats = IxnTrafficItemStatistics(self.ixn.root)
        ti_stats.read_stats()
        print(port_stats.get_object_stats('Port 1'))
        print(port_stats.get_counters('Frames Tx.'))
        assert(ti_stats.get_counter('Traffic Item 1', 'Rx Frames') == 1600)

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
