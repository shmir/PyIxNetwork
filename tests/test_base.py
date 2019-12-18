"""
Base class for all IXN package tests.

@author yoram@ignissoft.com
"""

from os import path
import inspect
import pytest


from trafficgenerator.tgn_utils import ApiType
from trafficgenerator.test.test_tgn import TestTgnBase
from ixnetwork.ixn_app import init_ixn


class TestIxnBase(TestTgnBase):

    TestTgnBase.config_file = path.join(path.dirname(__file__), 'IxNetwork.ini')

    server_ip = None
    server_port = None
    locations = None
    auth = None
    config_version = None
    license_server = None

    def setup(self):

        if self.api == ApiType.tcl and self._is_linux_server():
            pytest.skip('REST server do not support Tcl')

        super(TestIxnBase, self).setup()
        self.ixn = init_ixn(self.api, self.logger, self.install_dir)
        self.ixn.connect(self.server_ip, self.server_port, self.auth)
        if self.api == ApiType.rest:
            self.ixn.api.set_licensing(licensingServers=self.license_server)

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

    def _is_linux_server(self):
        return self.server_port == 443

    def _load_config(self, config_name):
        config_file = path.join(path.dirname(__file__), 'configs/{}_{}.ixncfg'.format(config_name, self.config_version))
        self.ixn.new_config()
        self.ixn.load_config(config_file)
        self.ixn.commit()

    def _save_config(self):
        test_name = inspect.stack()[1][3]
        self.ixn.save_config(path.join(path.dirname(__file__), 'configs', test_name + '.ixncfg'))
