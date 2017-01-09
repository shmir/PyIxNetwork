"""
Classes and utilities to manage IXN application.

@author yoram@ignissoft.com
"""

import sys
from os import path
import time
import logging

from trafficgenerator.tgn_utils import TgnError, is_true
from trafficgenerator.tgn_tcl import build_obj_ref_list
from trafficgenerator.trafficgenerator import TrafficGenerator

from ixn_object import IxnObject
from ixn_port import IxnPort
from ixn_traffic import IxnTrafficItem, IxnL23TrafficItem
from ixn_protocol import (IxnBgpRouter, IxnOspfRouter, IxnOspfV3Router, IxnBgpRouteRange, IxnOspfRouteRange,
                          IxnPimsmRouter, IxnIgmpHost, IxnIgmpQuerier, IxnPimsmSource, IxnStpBridge, IxnOpenFlowDevice,
                          IxnLacp, IxnIsisRouter, IxnIsisRouteRange, IxnLdpRouter, IxnLdpRouteRange)
from ixn_interface import IxnInterface, IxnInterfaceL3
from ixn_topology import IxnTopology, IxnDeviceGroup, IxnNgpfEthernet, IxnNgpfIpv4
from ixn_statistics_view import IxnStatisticsView
from ixn_root import IxnRoot
from ixn_protocol_stack import IxnRange
from ixn_hw import IxnHw, IxnChassis


TYPE_2_OBJECT = {'availableHardware': IxnHw,
                 'bridge': IxnStpBridge,
                 'chassis': IxnChassis,
                 'device': IxnOpenFlowDevice,
                 'deviceGroup': IxnDeviceGroup,
                 'ethernet': IxnNgpfEthernet,
                 'host': IxnIgmpHost,
                 'interface': {'vport': IxnInterface},
                 'ipv4': {'interface': IxnInterfaceL3,
                          'etherenet': IxnNgpfIpv4},
                 'ipv6': IxnInterfaceL3,
                 'lacp': IxnLacp,
                 'neighborRange': IxnBgpRouter,
                 'querier': IxnIgmpQuerier,
                 'range': IxnRange,
                 'router': {'ospf': IxnOspfRouter,
                            'ospfV3': IxnOspfV3Router,
                            'pimsm': IxnPimsmRouter,
                            'isis': IxnIsisRouter,
                            'ldp': IxnLdpRouter},
                 'routeRange': {'bgp': IxnBgpRouteRange,
                                'ospf': IxnOspfRouteRange,
                                'isis': IxnIsisRouteRange,
                                'ldp': IxnLdpRouteRange},
                 'source': {'interface': IxnPimsmSource},
                 'topology': IxnTopology,
                 'trafficItem': IxnTrafficItem,
                 'vport': IxnPort,
                 }


class IxnApp(TrafficGenerator):
    """ IxNetwork driver. Equivalent to IxNetwork Application. """

    root = None

    def __init__(self, logger, api_wrapper=None):
        """ Set all kinds of application level objects - logger, api, etc.

        :param logger: python logger (e.g. logging.getLogger('log'))
        :param api_wrapper: api wrapper object inheriting and implementing StcApi base class.
        """

        super(self.__class__, self).__init__()
        self.logger = logger
        self.api = api_wrapper

        IxnObject.logger = self.logger
        IxnObject.api = self.api
        IxnObject.str_2_class = TYPE_2_OBJECT

    def connect(self, tcl_server='localhost', tcl_port=8009):
        self.api.connect(tcl_server, tcl_port)
        self.root = IxnRoot(objRef=self.api.getRoot(), objType='root')
        IxnObject.root = self.root
        IxnObject.root.hw = self.root.get_child('availableHardware')

    def disconnect(self):
        """ Disconnect from chassis and server. """
        pass

    #
    # IxNetwork operation commands.
    #

    def commit(self):
        self.api.commit()

    def load_config(self, configFileName):
        self.api.loadConfig(configFileName)
        self.commit()

    def new_config(self):
        self.api.newConfig()
        self.commit()

    def save_config(self, configFileName):
        self.commit()
        self.api.saveConfig(path.abspath(configFileName))

    #
    # IxNetwork GUI commands.
    #

    def send_arp_ns(self):
        self.api.execute('sendArpAll')
        self.api.execute('sendNsAll')

    def send_rs(self):
        self.api.execute('sendRsAll')

    def protocols_start(self):
        """ Start all protocols.

        It is the calling function responsibility to wait for all protocols to start.
        """
        self.api.execute('startAllProtocols')

    def protocols_stop(self):
        """ Stop all protocols.

        It is the calling function responsibility to wait for all protocols to stop.
        """
        self.api.execute('stopAllProtocols')

    def traffic_apply(self):
        self.root.get_child_static('traffic').execute('apply')

    def l23_traffic_start(self):
        self.root.get_child_static('traffic').execute('startStatelessTraffic')
        self._wait_traffic_state("true", timeout=8)

    def l23_traffic_stop(self):
        self.root.get_child_static('traffic').execute('stopStatelessTraffic')
        self._wait_traffic_state("false", timeout=2)

    def _wait_traffic_state(self, state, timeout):
        for _ in range(32):
            if self.root.get_child_static('traffic').get_attribute('isTrafficRunning') == state:
                # Wait for counters.
                time.sleep(4)
                return
            time.sleep(1)
        raise TgnError('Traffic failed, traffic is {} after {} seconds'.
                       format(self.root.get_child_static('traffic').get_attribute('isTrafficRunning')), timeout)

    def protocol_action(self, protocol, action):
        action_state = {'start': 'started', 'stop': 'stopped', 'stop': 'stopped'}
        protocol_objs = []
        for port in self.root.get_objects_by_type('vport'):
            protocols = port.get_child_static('protocols')
            protocol_obj = protocols.get_child_static(protocol)
            if is_true(protocol_obj.get_attribute('enabled')):
                protocol_obj.execute(action)
                protocol_objs.append(protocol_obj)
        # Must wait before reading state
        time.sleep(2)
        for protocol_obj in protocol_objs:
            runningState = protocol_obj.get_attribute('runningState')
            timer = 16
            while timer and runningState != action_state[action]:
                time.sleep(1)
                runningState = protocol_obj.get_attribute('runningState')
                timer -= 1
            if runningState != action_state[action]:
                raise TgnError('Failed to {} port {} protocol {}'.
                               format(action, port.obj_name(), protocol))

    def protocol_start(self, protocol):
        """ Start a protocol and wait for all protocols to start.

        :raise TgnError: if some protocol failed to start.
        """
        self.protocol_action(protocol, 'start')

    def protocol_stop(self, protocol):
        """ Stop all protocols and wait for all protocols to stop.

        Raises:
            TgnError: if some protocol failed to stop.
        """
        self.protocol_action(protocol, 'stop')

    def protocol_abort(self, protocol):
        """ Abort all protocols and wait for all protocols to stop.

        Raises:
            TgnError: if some protocol failed to stop.
        """
        self.protocol_action(protocol, 'abort')

    #
    # Not tested beyond this point.
    #

    def l23TrafficOperation(self, action):
        tis = build_obj_ref_list(self.get_objects(IxnL23TrafficItem))
        self.api.execute(action + 'StatelessTraffic', tis)

    def l47TrafficOperation(self, action):
        self.api.execute(action + 'ApplicationTraffic', self.root + '/traffic')

    def l47TrafficApply(self):
        self.l47TrafficOperation('apply')

    def l47TrafficStart(self):
        self.l47TrafficOperation('start')

    def l47TrafficStop(self):
        self.l47TrafficOperation('stop')

    #
    # IxNetwork results commands.
    #

    def getStatistics(self, view):
        if (view not in self.objects):
            self.objects[view] = IxnStatisticsView(self.api, view)
        return self.objects[view].getStatistics()


def ixnetwork(args):
    """ Stand alone IXN application.

    Serves as code snippet and environment testing.
    """

    # TODO: replace with ini file.
    install_dir = 'C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA'
    log_level = 'INFO'
    log_file_name = 'test/logs/ixnetwork.txt'
    tgn_lib = 'C:/Tcl8532/lib/tgn'

    logger = logging.getLogger('log')
    logger.setLevel(log_level)
    logger.addHandler(logging.FileHandler(log_file_name))
    logger.addHandler(logging.StreamHandler(sys.stdout))

    ixn = IxnApp(logger, install_dir, tgn_lib)
    ixn.connect()

if __name__ == "__main__":
    sys.exit(ixnetwork((sys.argv[1:])))
