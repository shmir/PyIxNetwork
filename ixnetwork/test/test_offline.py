"""
IxNetwork package tests that can run in offline mode.

@author yoram@ignissoft.com
"""

from os import path
import inspect
from collections import OrderedDict

from ixnetwork.test.test_base import IxnTestBase
from ixnetwork.ixn_object import IxnObject
from ixnetwork.ixn_port import IxnPort
from ixnetwork.ixn_interface import IxnInterface
from ixnetwork.ixn_traffic import IxnL23TrafficItem
from ixnetwork.ixn_topology import IxnTopology, IxnDeviceGroup, IxnNgpfEthernet, IxnNgpfIpv4


class IxnTestOffline(IxnTestBase):

    def testAnalyzeConfig(self):
        """ Test configuration load. """
        self.logger.info(IxnTestOffline.testAnalyzeConfig.__doc__)

        self._load_config(path.join(path.dirname(__file__), 'configs/test_config.ixncfg'))
        root = self.ixn.root

        root.get_children('vport')
        port1_obj = root.get_object_by_name('Port 1')
        print('Port1 object reference = ', port1_obj.obj_ref())
        print('Port1 name = ', port1_obj.obj_name())
        print('Ports = ', root.get_objects_by_type('vport'))
        print('Port 1 all attributes: ', port1_obj.get_attributes())
        print('Port 1 some attributes: ', port1_obj.get_attributes('state', 'name'))
        print('Port 1 state: ' + port1_obj.get_attribute('state'))

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

        self.assertRaises(Exception,  self._load_config, path.join(path.dirname(__file__), 'invalid.ixncfg'))

        pass

    def testChildren(self):
        """ Test specific get children methods. """
        self.logger.info(IxnTestOffline.testAnalyzeConfig.__doc__)

        self._load_config(path.join(path.dirname(__file__), 'configs/test_config.ixncfg'))
        root = self.ixn.root

        ports = root.get_ports()
        assert(len(ports) == 2)
        for port in ports.values():
            assert(len(port.get_interfaces()) == 1)

        tis = root.get_traffic_items()
        assert(len(tis) == 2)
        for ti in tis.values():
            assert(len(ti.get_flow_groups()) == 2)

        self._load_config(path.join(path.dirname(__file__), 'configs/ngpf_config.ixncfg'))

        topologies = root.get_topologies()
        assert(len(topologies) == 2)
        for topology in topologies.values():
            assert(len(topology.get_device_groups()) == 1)

    def testBasicConfig(self):
        """ Test configuration build with basic objects - ports, interfaces, traffic items... """
        self.logger.info(IxnTestOffline.testBasicConfig.__doc__)

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
        pass

    def testFlowGroups(self):
        """ Test configuration build with various flow group types. """
        self.logger.info(IxnTestOffline.testFlowGroups.__doc__)

        num_ports = 2
        num_ints = 2
        ixn_ports = self._build_config(num_ports, num_ints)

        ixn_ti = IxnL23TrafficItem(name='IPv4 TI with two EPs')
        ixn_ti.set_attributes(trafficType='ipv4')

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        sources = [ixn_ports.keys()[0].obj_ref()]
        destinations = [ixn_ports.keys()[1].obj_ref()]
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        sources = [ixn_ports.keys()[1].obj_ref()]
        destinations = [ixn_ports.keys()[0].obj_ref()]
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)

        ixn_ti = IxnL23TrafficItem(name='Raw TI with two EPs')
        ixn_ti.set_attributes(trafficType='raw')

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        ixn_ti_es.api.commit()
        sources = [ixn_ports.keys()[0].obj_ref() + '/protocols']
        destinations = [ixn_ports.keys()[1].obj_ref() + '/protocols']
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)
        ixn_ti_es.api.commit()

        ixn_ti_es = IxnObject(parent=ixn_ti, objType='endpointSet')
        ixn_ti_es.api.commit()
        sources = [ixn_ports.keys()[1].obj_ref() + '/protocols']
        destinations = [ixn_ports.keys()[0].obj_ref() + '/protocols']
        ixn_ti_es.set_attributes(sources=sources, destinations=destinations)
        ixn_ti_es.api.commit()

        ixn_tis = self.ixn.root.get_child_static('traffic').get_children('trafficItem')
        assert(len(ixn_tis) == 2)
        ixn_eps = ixn_tis[0].get_children('endpointSet')
        assert(len(ixn_eps) == 2)
        ixn_eps = ixn_tis[1].get_children('endpointSet')
        assert(len(ixn_eps) == 2)

        self._save_config()
        pass

    def testTopologies(self):
        """ Test configuration build with topologies """
        self.logger.info(IxnTestOffline.testTopologies.__doc__)

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

    def _save_config(self):
        test_name = inspect.stack()[1][3]
        self.ixn.save_config(path.join(path.dirname(__file__), 'configs', test_name + '.ixncfg'))
