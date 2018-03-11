"""
IxNetwork package regression tests (all in offline mode).

@author yoram@ignissoft.com
"""

from trafficgenerator.tgn_utils import ApiType

from ixnetwork.test.test_online import IxnTestOnline
from ixnetwork.test.test_offline import IxnTestOffline


class IxnTestOnlineRest(IxnTestOnline):
    """ Set ini file to local Tcl, this will add local Rest and remote rest if available. """

    def setUp(self):
        rest = ApiType.rest
        self.config.set('IXN', 'api', rest.name)
        self.config.set('IXN', 'api_port', str(11009))
        super(self.__class__, self).setUp()


class IxnTestOfflineRest(IxnTestOffline):
    """ Set ini file to local Tcl, this will add local Rest and remote rest if available. """

    def setUp(self):
        rest = ApiType.rest
        self.config.set('IXN', 'api', rest.name)
        self.config.set('IXN', 'api_port', str(11009))
        super(self.__class__, self).setUp()
