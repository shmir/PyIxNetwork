"""
Base class for all IXN package tests.

@author yoram@ignissoft.com
"""

from os import path

from trafficgenerator.tgn_utils import ApiType
from trafficgenerator.test.test_tgn import TgnTest

from ixnetwork.ixn_app import init_ixn


class IxnTestBase(TgnTest):

    TgnTest.config_file = path.join(path.dirname(__file__), 'IxNetwork.ini')

    def setUp(self):
        super(IxnTestBase, self).setUp()
        self.ixn = init_ixn(ApiType[self.config.get('IXN', 'api')], self.logger, self.config.get('IXN', 'install_dir'))
        self.ixn.connect(self.config.get('IXN', 'api_server'), self.config.get('IXN', 'api_port'))

    def tearDown(self):
        super(IxnTestBase, self).tearDown()

    def testHelloWorld(self):
        pass

    #
    # Auxiliary functions, no testing inside.
    #

    def _load_config(self, config_file):
        self.ixn.new_config()
        self.ixn.load_config(config_file)
        self.ixn.commit()
