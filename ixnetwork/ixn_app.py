"""
Classes and utilities to manage IXN application.

@author yoram@ignissoft.com
"""

from os import path
import time
from collections import OrderedDict

from trafficgenerator.tgn_utils import TgnError, is_true, ApiType
from trafficgenerator.tgn_app import TgnApp

from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.api.ixn_python import IxnPythonWrapper
from ixnetwork.api.ixn_rest import IxnRestWrapper
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_traffic import IxnTrafficItem
from ixnetwork.ixn_protocol import (IxnBgpRouter, IxnOspfRouter, IxnOspfV3Router, IxnBgpRouteRange, IxnOspfRouteRange,
                                    IxnPimsmRouter, IxnIgmpHost, IxnIgmpQuerier, IxnPimsmSource, IxnStpBridge,
                                    IxnOpenFlowDevice, IxnLacp, IxnIsisRouter, IxnIsisRouteRange, IxnLdpRouter,
                                    IxnLdpRouteRange, IxnRsvpNeighborPair, IxnStaticIp, IxnBfdfRouter,
                                    IxnOspfv3RouteRange)
from ixnetwork.ixn_interface import IxnInterface, IxnInterfaceL3
from ixnetwork.ixn_topology import (IxnTopology, IxnNgpfEthernet, IxnNgpfVlan, IxnNgpfIpv4, IxnNgpfIpv6,
                                    IxnDeviceGroup, IxnNetworkGroup)
from ixnetwork.ixn_root import IxnRoot
from ixnetwork.ixn_protocol_stack import IxnRange
from ixnetwork.ixn_hw import IxnHw, IxnChassis, IxnCard, IxnPhyPort


def init_ixn(api, logger, install_dir=None):
    """ Create IXN object.

    :param api: tcl/python/rest
    :type api: trafficgenerator.tgn_utils.ApiType
    :param logger: logger object
    :param install_dir: IXN installation directory
    :return: IXN object
    """

    if api == ApiType.tcl:
        api_wrapper = IxnTclWrapper(logger, install_dir)
    elif api == ApiType.python:
        api_wrapper = IxnPythonWrapper(logger, install_dir)
    elif api == ApiType.rest:
        api_wrapper = IxnRestWrapper(logger)
    else:
        raise TgnError('{} API not supported - use Tcl, python or REST'.format(api))
    return IxnApp(logger, api_wrapper)


class IxnApp(TgnApp):
    """ IxNetwork driver. Equivalent to IxNetwork Application. """

    def __init__(self, logger, api_wrapper):
        """ Set all kinds of application level objects - logger, api, etc.

        :param logger: python logger (e.g. logging.getLogger('log'))
        :param api_wrapper: api wrapper object inheriting and implementing IxnApi base class.
        """

        super(self.__class__, self).__init__(logger, api_wrapper)

        IxnObject.str_2_class = TYPE_2_OBJECT

    def connect(self, api_server='localhost', api_port=11009, auth=None):
        self.api.connect(api_server, api_port, auth)
        self.root = IxnRoot(objRef=self.api.getRoot(), objType='root', parent=None)
        self.root.logger = self.logger
        self.root.api = self.api
        IxnObject.root = self.root
        self.root.hw = self.root.get_child_static('availableHardware')

    def disconnect(self):
        """ Disconnect from chassis and server. """
        if self.root.ref is not None:
            self.api.disconnect()
        self.root = None

    #
    # IxNetwork operation commands.
    #

    def commit(self):
        self.api.commit()

    def load_config(self, config_file_name):
        self.root.objects = OrderedDict()
        prefs = self.root.get_child_static('globals').get_child_static('preferences')
        prefs.set_attributes(connectPortsOnLoadConfig=False)
        self.api.loadConfig(config_file_name.replace('\\', '/'))
        self.commit()
        self.root.get_children('vport')
        self.root.hw = self.root.get_child_static('availableHardware')

    def new_config(self):
        self.root.objects = OrderedDict()
        self.api.newConfig()
        self.commit()

    def save_config(self, config_file_name):
        self.commit()
        self.api.saveConfig(path.abspath(config_file_name))

    #
    # IxNetwork GUI commands.
    #

    def reserve(self, ports, force=False, wait_for_up=True, timeout=80):
        """ Reserve port and optionally wait for port to come up.

        :param ports: dict of <port, ip/module/port'>.
        :param force: whether to revoke existing reservation (True) or not (False).
        :param wait_for_up: True - wait for port to come up, False - return immediately.
        :param timeout: how long (seconds) to wait for port to come up.
        """

        if force:
            for port in ports:
                port.release()

        for port, location in ports.items():
            port.reserve(location, False, wait_for_up, timeout)

    def send_arp_ns(self):
        self.api.execute('sendArpAll', valid_on_linux=False)
        self.api.execute('sendNsAll', valid_on_linux=False)

    def send_rs(self):
        self.api.execute('sendRsAll', valid_on_linux=False)

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

    def regenerate(self):
        traffic = self.root.get_child_static('traffic')
        self.root.regenerate(traffic.get_objects_or_children_by_type('trafficItem'))

    def traffic_apply(self):
        traffic = self.root.get_child_static('traffic')
        self.root.get_child_static('traffic').execute('apply', traffic.ref)

    def l23_traffic_start(self, blocking=False):
        traffic = self.root.get_child_static('traffic')
        self.root.l23_traffic_start(traffic.get_objects_or_children_by_type('trafficItem'), blocking)

    def l23_traffic_stop(self):
        traffic = self.root.get_child_static('traffic')
        self.root.l23_traffic_stop(traffic.get_objects_or_children_by_type('trafficItem'))

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
                protocol_obj.execute(action, protocol_obj.ref)
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

    def quick_test_apply(self, name):
        quick_test = self.root.get_quick_tests()[name]
        quick_test.execute('apply', quick_test.ref)

    def quick_test_start(self, name, blocking=False, timeout=3600):
        quick_test = self.root.get_quick_tests()[name]
        quick_test.execute('start', quick_test.ref)
        if blocking:
            return self.wait_quick_test_status(name, False, timeout)

    def quick_test_stop(self, name):
        quick_test = self.root.get_quick_tests()[name]
        quick_test.execute('stop', quick_test.ref)

    def wait_quick_test_status(self, name, status=False, timeout=3600):
        quick_test = self.root.get_quick_tests()[name]
        results = quick_test.get_child_static('results')
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
                 'ipv6': {'interface': IxnInterfaceL3,
                          'etherenet': IxnNgpfIpv6},
                 'lacp': IxnLacp,
                 'neighborPair': IxnRsvpNeighborPair,
                 'neighborRange': IxnBgpRouter,
                 'networkGroup': IxnNetworkGroup,
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
                                'ospfV3': IxnOspfv3RouteRange,
                                'isis': IxnIsisRouteRange,
                                'ldp': IxnLdpRouteRange},
                 'source': {'interface': IxnPimsmSource},
                 'topology': IxnTopology,
                 'trafficItem': IxnTrafficItem,
                 'vlan': IxnNgpfVlan,
                 'vport': IxnPort,
                 }
