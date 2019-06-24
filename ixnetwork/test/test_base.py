"""
Base class for all IXN package tests.

@author yoram@ignissoft.com
"""

from os import path

from trafficgenerator.test.test_tgn import TestTgnBase

from ixnetwork.ixn_app import init_ixn


class TestIxnBase(TestTgnBase):

    TestTgnBase.config_file = path.join(path.dirname(__file__), 'IxNetwork.ini')

    def setup(self):
        super(TestIxnBase, self).setup()
        self.ixn = init_ixn(self.api, self.logger, self.config.get('IXN', 'install_dir'))
        self.ixn.connect(self.server_ip, self.server_port, self.auth)

    def teardown(self):
        for port in self.ixn.root.get_objects_or_children_by_type('vport'):
            port.release()
        self.ixn.disconnect()
        super(TestIxnBase, self).teardown()

    def test_hello_world(self, api):
        pass

    #
    # Auxiliary functions, no testing inside.
    #

    def _load_config(self, config_name):
        config_file = path.join(path.dirname(__file__), 'configs/{}_{}.ixncfg'.format(config_name, self.config_version))
        self.ixn.new_config()
        self.ixn.load_config(config_file)
        self.ixn.commit()
