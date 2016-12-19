"""
Stand alone samples for all IXN package functionality.

@author yoram@ignissoft.com
"""

import sys
from os import path
import unittest
import logging

from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.api.ixn_python import IxnPythonWrapper
from ixnetwork.ixn_app import IxnApp


api = 'tcl'
install_dir = 'C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA'
tgn_lib = 'E:/Tcl/Tcl8532/lib/tgn'

ixn_config_file = path.join(path.dirname(__file__), 'configs/test_config.ixncfg')

port1_location = '10.224.18.111/4/4'
port2_location = '10.224.18.111/4/5'


class IxnTestBase(unittest.TestCase):

    def setUp(self):
        super(IxnTestBase, self).setUp()
        logger = logging.getLogger('log')
        logger.setLevel('DEBUG')
        logger.addHandler(logging.StreamHandler(sys.stdout))
        if api == 'tcl':
            api_wrapper = IxnTclWrapper(logger, install_dir, tgn_lib)
        else:
            api_wrapper = IxnPythonWrapper(logger, install_dir)
        self.ixn = IxnApp(logger, api_wrapper=api_wrapper)
        self.ixn.connect()

    def tearDown(self):
        super(IxnTestBase, self).tearDown()

    def load_config(self):
        self.ixn.new_config()
        self.ixn.load_config(ixn_config_file)
        self.ixn.commit()

    def reserve_ports(self, config_file):
        self.load_config(config_file)
        self.ports = self.ixn.root.get_children('vport')
        self.ixn.root.get_object_by_name('Port 1').reserve(self.config.get('IXN', 'port1'))
        self.ixn.root.get_object_by_name('Port 2').reserve(self.config.get('IXN', 'port2'))
