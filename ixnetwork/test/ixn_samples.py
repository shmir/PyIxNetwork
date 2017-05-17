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

from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.api.ixn_python import IxnPythonWrapper
from ixnetwork.ixn_app import IxnApp
from ixnetwork.ixn_statistics_view import IxnPortStatistics, IxnTrafficItemStatistics


# API type = tcl or python. The default is tcl with DEBUG log messages (see bellow) because it gives best visibility.
api = 'tcl'
install_dir = 'C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA'

ixn_config_file = path.join(path.dirname(__file__), 'configs/test_config.ixncfg')

port1_location = '192.168.42.61/1/1'
port2_location = '192.168.42.61/1/2'


class IxnSamples(unittest.TestCase):

    def setUp(self):
        super(IxnSamples, self).setUp()
        logger = logging.getLogger('log')
        logger.setLevel('DEBUG')
        logger.addHandler(logging.StreamHandler(sys.stdout))
        if api == 'tcl':
            api_wrapper = IxnTclWrapper(logger, install_dir)
        else:
            api_wrapper = IxnPythonWrapper(logger, install_dir)
        self.ixn = IxnApp(logger, api_wrapper=api_wrapper)
        self.ixn.connect()

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
        self.ixn.root.get_object_by_name('Port 1').reserve(port1_location)
        self.ixn.root.get_object_by_name('Port 2').reserve(port2_location)

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
        port_stats = IxnPortStatistics()
        port_stats.read_stats()
        ti_stats = IxnTrafficItemStatistics()
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
        for module_name, module in chassis.modules.items():
            print('Module ' + module_name)
            for port_name in module.ports:
                print('Port ' + port_name)
