"""
Base class for all IXN package tests.

@author yoram@ignissoft.com
"""

from os import path

from trafficgenerator.tgn_utils import ApiType
from trafficgenerator.test.test_tgn import TestTgnBase

from ixnetwork.ixn_app import init_ixn


class TestIxnBase(TestTgnBase):

    TestTgnBase.config_file = path.join(path.dirname(__file__), 'IxNetwork.ini')

    def setup(self):
        super(TestIxnBase, self).setup()
        self.ixn = init_ixn(ApiType[self.config.get('IXN', 'api')], self.logger, self.config.get('IXN', 'install_dir'))
        self.ixn.connect(self.config.get('IXN', 'server'), self.config.get('IXN', 'api_port'))

    def teardown(self):
        for port in self.ixn.root.get_objects_or_children_by_type('vport'):
            port.release()
        self.ixn.disconnect()
        super(TestIxnBase, self).teardown()

    def test_hello_world(self):
        pass

    #
    # Auxiliary functions, no testing inside.
    #

    def _get_config(self, name):
        pass

    def _load_config(self, config_name):
        version = self.config.get('IXN', 'config_version')
        config_file = path.join(path.dirname(__file__), 'configs/{}_{}.ixncfg'.format(config_name, version))
        self.ixn.new_config()
        self.ixn.load_config(config_file)
        self.ixn.commit()
