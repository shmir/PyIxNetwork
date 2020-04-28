"""
@author yoram@ignissoft.com
"""

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
from ixnetwork.ixn_root import IxnRoot, IxnQuickTest
from ixnetwork.ixn_protocol_stack import IxnRange
from ixnetwork.ixn_hw import IxnHw, IxnChassis, IxnCard, IxnPhyPort

__version__ = '3.0.0'


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
                 'quickTest': IxnQuickTest,
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

                 'rfc2544back2back': IxnQuickTest,
                 'trafficTest': IxnQuickTest,
                 }

# asymmetricFrameLoss
# asymmetricThroughput
# cloudPerf
# customContDuration
# customFixedDuration
# customStep
# customThroughput
# dhcpRate
# dhcpRateCpf
# dhcpv6Rate
# dhcpv6RateCpf
# dot1xCapacity
# dot1xRate
# eventScheduler
# fcoeMaxNoDropThroughput
# fcoeMaxNoPauseThroughput
# iptvChannelZapping
# l2tpCapacity
# l2tpRate
# l2tpRateCpf
# lnsCpfCapacity
# openFlowFailoverPerformance
# openFlowLayer2LearningRate
# openFlowLayer3LearningRate
# openFlowTableCapacity
# pppoxRateCpf
# pppoxRateCpfServerCapacity
# pppServerCapacity
# pppSessionRate
# ptpBestMasterSelection
# ptpCorrectionFactorError
# ptpSlaveScalability
# rfc2544back2back
# rfc2544frameLoss
# rfc2544throughput
# rfc2889addressCache
# rfc2889addressRate
# rfc2889broadcastRate
# rfc2889congestionControl
# rfc2889frameErrorFiltering
# rfc2889fullyMeshed
# rfc2889manyToOne
# rfc2889oneToMany
# rfc2889partiallyMeshed
# rfc3918aggregated
# rfc3918burdenedJoinDelay
# rfc3918burdenedLatency
# rfc3918groupCapacity
# rfc3918groupPatternVerification
# rfc3918ipmcMinMaxLat
# rfc3918joinLeaveDelay
# rfc3918joinRate
# rfc3918mixedClassThroughput
# rfc3918scaleGroup
# rfc7747failover
# rfc7747ribIn
# trafficTest
# y1564
