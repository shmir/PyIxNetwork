"""
IxNetwork package tests that can run in offline mode.

@author yoram@ignissoft.com
"""

from os import path
from collections import OrderedDict
import pytest

from trafficgenerator.tgn_utils import ApiType
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_interface import IxnInterface
from ixnetwork.ixn_traffic import IxnL23TrafficItem
from ixnetwork.ixn_topology import IxnTopology, IxnDeviceGroup, IxnNgpfEthernet, IxnNgpfIpv4
from .test_base import TestIxnBase


class TestIxnOffline(TestIxnBase):

    def test_load_config(self, api):
        """ Test configuration load. """
        self.logger.info(TestIxnOffline.test_load_config.__doc__)

        self._load_config('test_config')
        self._save_config()

    def test_analyze_config(self, api):
        """ Test configuration analysis. """
        self.logger.info(TestIxnOffline.test_analyze_config.__doc__)

        self._load_config('test_config')
        root = self.ixn.root

        root.get_children('vport')
        port1_obj = root.get_object_by_name('Port 1')
        print('Port1 object reference = ', port1_obj.obj_ref())
        print('Port1 name = ', port1_obj.obj_name())
        print('Ports = ', root.get_objects_by_type('vport'))
        print('Port 1 all attributes: ', port1_obj.get_attributes())
        print('Port 1 some attributes: ', port1_obj.get_attributes('state', 'name'))
        print('Port 1 state: ' + port1_obj.get_attribute('state'))

        if self.config_version == 'classic':
            for ixn_port in root.get_objects_by_type('vport'):
                for ixn_int in ixn_port.get_children('interface'):
                    print(ixn_int.obj_name(), ' = ', ixn_int.obj_ref())
                    ixn_ipv4 = ixn_int.get_child('ipv4')
                    print(ixn_ipv4.obj_name(), ' = ', ixn_ipv4.obj_ref())
                    ixn_ipv6 = ixn_int.get_child('ipv6')
                    assert(ixn_ipv6 is None)

        for ixn_port in root.get_objects_by_type('vport'):
            for ixn_obj in ixn_port.get_children():
                print(ixn_obj.obj_name(), ' = ', ixn_obj.obj_ref())

        vports = root.get_objects_by_type('vport')
        assert(len(vports) == 2)
        assert(type(vports[0]) is IxnPort)

        with pytest.raises(Exception):
            self._load_config(path.join(path.dirname(__file__), 'configs/invalid.ixncfg'))

    def test_children(self, api):
        """ Test specific get children methods. """
        self.logger.info(TestIxnOffline.test_children.__doc__)

        self._load_config('test_config')

        ports = self.ixn.root.get_ports()
        assert(len(ports) == 2)

        tis = self.ixn.root.get_traffic_items()
        assert(len(tis) == 2)
        for ti in tis.values():
            assert(len(ti.flow_groups) == 2)

        if self.config_version == 'classic':
            for port in ports.values():
                assert(len(port.get_interfaces()) == 1)
        else:
            topologies = self.ixn.root.get_topologies()
            assert(len(topologies) == 2)
            for topology in topologies.values():
                assert(len(topology.get_device_groups()) == 1)

    def test_basic_config(self, api):
        """ Test configuration build with basic objects - ports, interfaces, traffic items...

        todo: refactor with NGPF
        """

        if self._is_linux_server():
            pytest.skip('server does not support classical protocols')

        self.logger.info(TestIxnOffline.test_basic_config.__doc__)

        num_ports = 2
        num_ints = 2
        ixn_ports = self._build_config(num_ports, num_ints)

        assert(len(ixn_ports) == num_ports)
        for ixn_port in ixn_ports:
            assert(len(ixn_ports[ixn_port]) == num_ints)

        ixn_protocols = list(ixn_ports.keys())[0].get_child_static('protocols')
        ixn_bgp = ixn_protocols.get_child_static('bgp')
        ixn_bgp.set_attributes(enabled=True)

        ixn_ipv4_neighbor = IxnObject(parent=ixn_bgp, objType='neighborRange')
        ixn_ipv4_neighbor.set_attributes(bgpId='1.1.1.1')
        ixn_ipv4_neighbor.set_attributes(interfaces=list(ixn_ports.values())[0][0].obj_ref())
        ixn_ipv4_neighbor.set_attributes(localIpAddress='0.0.0.0')

        ixn_ti = IxnL23TrafficItem(name='One interface')
        ixn_ti.set_attributes(trafficType='ipv4')
        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        sources = [list(ixn_ports)[0].get_objects_by_type('interface')[0].obj_ref()]
        destinations = [list(ixn_ports)[1].get_objects_by_type('interface')[0].obj_ref()]
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)

        self._save_config()

    def test_flow_groups(self, api):
        """ Test configuration build with various flow group types.

        todo: refactor with NGPF
        """

        if self._is_linux_server():
            pytest.skip('server does not support classical protocols')

        num_ports = 2
        num_ints = 2
        ixn_ports = self._build_config(num_ports, num_ints)

        ixn_ti = IxnL23TrafficItem(name='IPv4 TI with two EPs')
        ixn_ti.set_attributes(trafficType='ipv4')

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        sources = [list(ixn_ports.keys())[0].ref]
        destinations = [list(ixn_ports.keys())[1].ref]
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        sources = [list(ixn_ports.keys())[1].ref]
        destinations = [list(ixn_ports.keys())[0].ref]
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)

        ixn_ti = IxnL23TrafficItem(name='Raw TI with two EPs')
        ixn_ti.set_attributes(trafficType='raw')

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        ixn_ti_es.api.commit()
        sources = [list(ixn_ports.keys())[0].ref + '/protocols']
        destinations = [list(ixn_ports.keys())[1].ref + '/protocols']
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)
        ixn_ti_es.api.commit()

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        ixn_ti_es.api.commit()
        sources = [list(ixn_ports.keys())[1].ref + '/protocols']
        destinations = [list(ixn_ports.keys())[0].ref + '/protocols']
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)
        ixn_ti_es.api.commit()

        ixn_tis = self.ixn.root.get_child_static('traffic').get_children('trafficItem')
        assert(len(ixn_tis) == 2)
        ixn_eps = ixn_tis[0].get_children('endpointSet')
        assert(len(ixn_eps) == 2)
        ixn_eps = ixn_tis[1].get_children('endpointSet')
        assert(len(ixn_eps) == 2)

        self._save_config()

    def test_topologies(self, api):
        """ Test configuration build with topologies.

        todo: refactor with NGPF
        """

        if self._is_linux_server():
            pytest.skip('server does not support classical protocols')

        self.logger.info(TestIxnOffline.test_topologies.__doc__)

        num_ports = 2
        num_ints = 0
        ixn_ports = self._build_config(num_ports, num_ints)

        assert(len(ixn_ports) == num_ports)
        for ixn_port in ixn_ports:
            assert(len(ixn_ports[ixn_port]) == num_ints)

        for topo_num, ixn_port in zip(range(1, num_ports + 1), ixn_ports):
            topo_name = 'Topo {}'.format(topo_num)
            self.logger.info('Create Topo "{}"'.format(topo_name))
            ixn_topo = IxnTopology(name=topo_name)
            ixn_topo.set_attributes(vports=[ixn_port.obj_ref()])
            ixn_dg = IxnDeviceGroup(parent=ixn_topo)
            ixn_dg.set_attributes(multiplier=topo_num)
            ixn_eth = IxnNgpfEthernet(parent=ixn_dg)
            ixn_eth.get_attribute('mac')
            IxnNgpfIpv4(parent=ixn_eth)

    def test_backdoor(self, api):
        """ Test cdirect access to REST objects """
        self.logger.info(TestIxnOffline.test_backdoor.__doc__)

        if self.api != ApiType.rest:
            pytest.skip("backdoor supported only for rest API")
        print('session = {}'.format(self.ixn.api.session))
        ixn_globals = self.ixn.api.getList(self.ixn.root.ref, 'globals')[0]
        print('ixn_globals = {}'.format(ixn_globals))
        print(self.ixn.api.getAttributes(ixn_globals))

        ixn_prefs = self.ixn.api.getList(ixn_globals, 'preferences')[0]
        print('ixn_prefs = {}'.format(ixn_prefs))
        print(self.ixn.api.getAttributes(ixn_prefs))

        self.ixn.api.setAttributes(ixn_prefs, connectPortsOnLoadConfig=True)
        print(self.ixn.api.getAttributes(ixn_prefs))

    #
    # Auxiliary functions, no testing inside.
    #

    def _build_config(self, num_ports, num_ints):
        self.ixn.new_config()
        self.logger.info('Build config with {} ports and {} interfaces per port'.
                         format(num_ports, num_ints))
        for port_num in range(1, num_ports + 1):
            port_name = 'Port {}'.format(port_num)
            self.logger.info('Create Port "{}"'.format(port_name))
            ixn_port = IxnPort(name=port_name, parent=self.ixn.root)
            for int_num in range(1, num_ints + 1):
                int_name = '{} int {}'.format(port_name, int_num)
                self.logger.info('Build Interface "{}"'.format(int_name))
                ixn_int = IxnInterface(name=int_name, parent=ixn_port)
                ixn_int_eth = ixn_int.get_child_static('ethernet')
                macAddress = '00:11:22:33:{}:{}'.format(port_num, int_num)
                ixn_int_eth.set_attributes(macAddress=macAddress)
                ixn_int_ip = IxnObject(parent=ixn_int, objType='ipv4')
                ip = '1.2.{}.{}'.format(port_num, int_num)
                ixn_int_ip.set_attributes(ip=ip)

        self.ixn.commit()

        ixn_ports = OrderedDict()
        for ixn_port in self.ixn.root.get_children('vport'):
            ixn_ports[ixn_port] = ixn_port.get_children('interface')

        return ixn_ports
