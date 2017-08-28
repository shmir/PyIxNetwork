"""
Classes and utilities to manage IXN application.

@author yoram@ignissoft.com
"""

import sys
from os import path
import time
from builtins import range

from trafficgenerator.tgn_utils import TgnError, is_true, ApiType
from trafficgenerator.trafficgenerator import TrafficGenerator

from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.api.ixn_python import IxnPythonWrapper
from ixnetwork.api.ixn_rest import IxnRestWrapper
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_traffic import IxnTrafficItem
from ixnetwork.ixn_protocol import (IxnBgpRouter, IxnOspfRouter, IxnOspfV3Router, IxnBgpRouteRange, IxnOspfRouteRange,
                                    IxnPimsmRouter, IxnIgmpHost, IxnIgmpQuerier, IxnPimsmSource, IxnStpBridge,
                                    IxnOpenFlowDevice, IxnLacp, IxnIsisRouter, IxnIsisRouteRange, IxnLdpRouter,
                                    IxnLdpRouteRange, IxnRsvpNeighborPair, IxnStaticIp, IxnBfdfRouter)
from ixnetwork.ixn_interface import IxnInterface, IxnInterfaceL3
from ixnetwork.ixn_topology import IxnTopology, IxnDeviceGroup, IxnNgpfEthernet, IxnNgpfIpv4
from ixnetwork.ixn_root import IxnRoot
from ixnetwork.ixn_protocol_stack import IxnRange
from ixnetwork.ixn_hw import IxnHw, IxnChassis, IxnCard, IxnPhyPort


def init_ixn(api, logger, install_dir=None):
    """ Create IXN object.

    :param api: configuration file object (-c option)
    :type api: trafficgenerator.tgn_utils.ApiType
    :param logger: logger object
    :param install_dir: IXN installation directory
    :return: IXN object
    """

    if api == ApiType.tcl:
        api_wrapper = IxnTclWrapper(logger, install_dir)
    elif api == ApiType.python:
        api_wrapper = IxnPythonWrapper(logger, install_dir)
    else:
        api_wrapper = IxnRestWrapper(logger)
    return IxnApp(logger, api_wrapper)


class IxnApp(TrafficGenerator):
    """ IxNetwork driver. Equivalent to IxNetwork Application. """

    def __init__(self, logger, api_wrapper):
        """ Set all kinds of application level objects - logger, api, etc.

        :param logger: python logger (e.g. logging.getLogger('log'))
        :param api_wrapper: api wrapper object inheriting and implementing IxnApi base class.
        """

        super(self.__class__, self).__init__()
        self.logger = logger
        self.api = api_wrapper

        IxnObject.str_2_class = TYPE_2_OBJECT

    def connect(self, tcl_server='localhost', tcl_port=8009):
        self.api.connect(tcl_server, tcl_port)
        self.root = IxnRoot(objRef=self.api.getRoot(), objType='root', parent=None)
        self.root.logger = self.logger
        self.root.api = self.api
        IxnObject.root = self.root
        self.root.hw = self.root.get_child('availableHardware')

    def disconnect(self):
        """ Disconnect from chassis and server. """
        pass

    #
    # IxNetwork operation commands.
    #

    def commit(self):
        self.api.commit()

    def load_config(self, config_file_name):
        self.api.loadConfig(config_file_name)
        self.commit()

    def new_config(self):
        self.api.newConfig()
        self.commit()

    def save_config(self, config_file_name):
        self.commit()
        self.api.saveConfig(path.abspath(config_file_name))

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

    def l23_traffic_start(self, blocking=False):
        self.root.get_child_static('traffic').execute('startStatelessTraffic')
        self.wait_traffic_state("started", timeout=16)
        if blocking:
            self.wait_traffic_state("stopped", timeout=sys.maxsize)
        else:
            time.sleep(2)

    def l23_traffic_stop(self):
        self.root.get_child_static('traffic').execute('stopStatelessTraffic')
        self.wait_traffic_state("stopped", timeout=8)

    def wait_traffic_state(self, state, timeout):
        for _ in range(timeout):
            if self.root.get_child_static('traffic').get_attribute('state') == state:
                return
            time.sleep(1)
        raise TgnError('Traffic failed, traffic is {} after {} seconds'.
                       format(self.root.get_child_static('traffic').get_attribute('isTrafficRunning'), timeout))

    def protocol_start(self, protocol):
        """ Start a protocol and wait for all protocols to start.

        :raise TgnError: if some protocol failed to start.
        """
        self.protocol_action(protocol, 'start')

    def protocol_stop(self, protocol):
        """ Stop all protocols and wait for all protocols to stop.

        :raise TgnError: if some protocol failed to stop.
        """
        self.protocol_action(protocol, 'stop')

    def protocol_action(self, protocol, action):
        action_state = {'start': 'started', 'stop': 'stopped'}
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

    def quick_test_apply(self, quick_test):
        self.root.get_quick_tests()[quick_test].execute('apply')

    def quick_test_start(self, quick_test, blocking=False, timeout=3600):
        self.root.get_quick_tests()[quick_test].execute('start')
        if blocking:
            return self.wait_quick_test_status(quick_test, False, timeout)

    def quick_test_stop(self, quick_test):
        self.root.get_quick_tests()[quick_test].execute('stop')

    def wait_quick_test_status(self, quick_test, status=False, timeout=3600):
        results = self.root.get_quick_tests()[quick_test].get_child_static('results')
        for _ in range(timeout):
            if is_true(results.get_attribute('isRunning')) == status:
                return results.get_attribute('result')
            time.sleep(1)
        raise TgnError('Quick test failed, quick test running state is {} after {} seconds'.
                       format(results.get_attribute('isRunning'), timeout))

TYPE_2_OBJECT = {'availableHardware': IxnHw,
                 'bridge': IxnStpBridge,
                 'card': IxnCard,
                 'chassis': IxnChassis,
                 'device': IxnOpenFlowDevice,
                 'deviceGroup': IxnDeviceGroup,
                 'ethernet': IxnNgpfEthernet,
                 'host': IxnIgmpHost,
                 'interface': {'vport': IxnInterface},
                 'ip': IxnStaticIp,
                 'ipv4': {'interface': IxnInterfaceL3,
                          'etherenet': IxnNgpfIpv4},
                 'ipv6': IxnInterfaceL3,
                 'lacp': IxnLacp,
                 'neighborPair': IxnRsvpNeighborPair,
                 'neighborRange': IxnBgpRouter,
                 'port': IxnPhyPort,
                 'querier': IxnIgmpQuerier,
                 'range': IxnRange,
                 'router': {'bfd': IxnBfdfRouter,
                            'isis': IxnIsisRouter,
                            'ldp': IxnLdpRouter,
                            'ospf': IxnOspfRouter,
                            'ospfV3': IxnOspfV3Router,
                            'pimsm': IxnPimsmRouter},
                 'routeRange': {'bgp': IxnBgpRouteRange,
                                'ospf': IxnOspfRouteRange,
                                'isis': IxnIsisRouteRange,
                                'ldp': IxnLdpRouteRange},
                 'source': {'interface': IxnPimsmSource},
                 'topology': IxnTopology,
                 'trafficItem': IxnTrafficItem,
                 'vport': IxnPort,
                 }
