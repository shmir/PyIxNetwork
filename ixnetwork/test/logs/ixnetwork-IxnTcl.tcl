source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L69] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L70] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L71] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L72] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L73] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L74] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L75] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L76] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L77] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L89] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L90] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L91] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L92] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L93] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L94] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L95] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L96] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L97] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L98] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L99] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L100] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L101] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L102] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L103] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L104] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:1 -count  {1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L125] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L126] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L127] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L128] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L129] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L130] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L131] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L132] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L133] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L134] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L135] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L136] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L137] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L138] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L139] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L140] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L141] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L142] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L143] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L144] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L145] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L146] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L147] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L148] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L149] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L150] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L151] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L152] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L153] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L154] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L155] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L156] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L157] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L158] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L159] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L160] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L161] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L162] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L163] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L164] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L165] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L166] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L167] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L168] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L169] 0
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L170] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L171] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L172] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L173] 0
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L174] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L179] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L180] 0
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L181] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L182] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L183] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L184] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L185] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L186] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L187] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L188] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-49
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L196] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L196] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L197] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L197] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L198] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L198] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L199] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L199] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L200] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L200] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L201] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L201] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L202] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L202] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L203] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L203] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L204] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L204] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L205] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L205] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L206] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L206] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L207] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L207] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L208] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L208] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-50
ixNet exec saveConfig ::ixNet::FILEHANDLE-50
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L209] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L209] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L209] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L210] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L210] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L210] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L211] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L211] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L211] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L212] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L212] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L212] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L213] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L213] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L213] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L214] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L214] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L214] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L215] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L215] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L215] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L216] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L216] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L216] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L217] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L217] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L217] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L218] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L218] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L218] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L219] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L219] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L219] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L220] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L220] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L220] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L221] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L221] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L221] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L222] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L222] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L222] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L223] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L223] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L223] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L224] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L224] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L224] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L225 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-51
ixNet exec saveConfig ::ixNet::FILEHANDLE-51
ixNet exec saveConfig ::ixNet::FILEHANDLE-51
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L226] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L226] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L226] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L226] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L226] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L227] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L227] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L227] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L227] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L227] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L228] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L228] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L228] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L228] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L228] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L229] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L229] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L229] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L229] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L229] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L230] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L230] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L230] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L230] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L230] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L231] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L231] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L231] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L231] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L231] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L232] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L232] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L232] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L232] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L232] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L233] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L233] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L233] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L233] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L233] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L234] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L234] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L234] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L234] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L234] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L235] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L235] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L235] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L235] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L235] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-52
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L236] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L236] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L237] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L237] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L238] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L238] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L239] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L239] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L240] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L240] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L241] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L241] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L242] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L242] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L243] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L243] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L244] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L244] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L245] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L245] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L246] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L246] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L247] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L247] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L248] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L248] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-53
ixNet exec saveConfig ::ixNet::FILEHANDLE-53
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L249] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L249] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L249] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L250] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L250] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L250] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L251] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L251] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L251] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L252] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L252] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L252] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L253] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L253] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L253] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L254] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L254] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L254] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L255] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L255] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L255] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L256] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L256] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L256] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L257] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L257] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L257] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L258] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L258] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L258] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L259] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L259] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L259] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L260] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L260] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L260] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L261] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L261] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L261] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L262] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L262] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L262] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L263] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L263] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L263] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L264] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L264] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L264] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L265 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-54
ixNet exec saveConfig ::ixNet::FILEHANDLE-54
ixNet exec saveConfig ::ixNet::FILEHANDLE-54
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L266] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L266] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L266] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L266] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L266] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L267] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L267] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L267] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L267] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L267] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L268] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L268] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L268] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L268] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L268] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L269] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L269] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L269] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L269] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L269] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L270] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L270] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L270] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L270] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L270] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L271] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L271] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L271] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L271] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L271] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L272] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L272] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L272] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L272] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L272] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L273] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L273] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L273] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L273] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L273] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L274] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L274] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L274] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L274] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L274] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L275] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L275] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L275] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L275] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L275] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-55
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-57
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L277] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L277] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L278] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L278] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L279] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L279] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L280] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L280] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L281] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L281] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L282] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L282] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L283] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L283] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L284] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L284] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L285] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L285] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L286] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L286] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L287] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L287] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L288] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L288] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L289] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L289] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-58
ixNet exec saveConfig ::ixNet::FILEHANDLE-58
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L290] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L290] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L290] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L291] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L291] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L291] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L292] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L292] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L292] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L293] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L293] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L293] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L294] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L294] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L294] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L295] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L295] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L295] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L296] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L296] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L296] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L297] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L297] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L297] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L298] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L298] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L298] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L299] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L299] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L299] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L300] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L300] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L300] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L301] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L301] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L301] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L302] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L302] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L302] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L303] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L303] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L303] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L304] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L304] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L304] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L305] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L305] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L305] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L306 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-59
ixNet exec saveConfig ::ixNet::FILEHANDLE-59
ixNet exec saveConfig ::ixNet::FILEHANDLE-59
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L307] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L307] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L307] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L307] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L307] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L308] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L308] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L308] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L308] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L308] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L309] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L309] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L309] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L309] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L309] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L310] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L310] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L310] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L310] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L310] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L311] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L311] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L311] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L311] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L311] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L312] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L312] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L312] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L312] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L312] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L313] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L313] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L313] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L313] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L313] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L314] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L314] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L314] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L314] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L314] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L315] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L315] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L315] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L315] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L315] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L316] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L316] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L316] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L316] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L316] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet exec loadConfig ::ixNet::FILEHANDLE-60
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L317] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L318] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L319] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L320] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L321] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L322] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L323] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L324] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L325] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L326] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L327] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L328] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L329] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
ixNet exec saveConfig ::ixNet::FILEHANDLE-61
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L330] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L331] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L332] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L333] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L334] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L335] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L336] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L337] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L338] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L339] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L340] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L341] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L342] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L343] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L344] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L345] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L346 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
ixNet exec saveConfig ::ixNet::FILEHANDLE-62
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet exec loadConfig ::ixNet::FILEHANDLE-63
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getList ::ixNet::OBJ-//traffic trafficItem
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -name
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec generate  {::ixNet::OBJ-/traffic/trafficItem:1} 
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec apply ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec startStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
ixNet exec stopStatelessTraffic ::ixNet::OBJ-//traffic
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet exec loadConfig ::ixNet::FILEHANDLE-64
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet exec loadConfig ::ixNet::FILEHANDLE-65
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendArpAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec sendNsAll 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec start ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -enabled
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:1/protocols/ospf
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -enabled
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet exec stop ::ixNet::OBJ-/vport:2/protocols/ospf
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols/ospf}  -runningState
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet exec loadConfig ::ixNet::FILEHANDLE-66
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-67
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 0.0.0.0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-68
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet exec sendArp ::ixNet::OBJ-/vport:1
ixNet exec sendNs ::ixNet::OBJ-/vport:1
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv6
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -gateway
ixNet exec sendPing ::ixNet::OBJ-/vport:1/interface:1 1.1.1.2
ixNet exec sendArp ::ixNet::OBJ-/vport:2
ixNet exec sendNs ::ixNet::OBJ-/vport:2
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv6
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -gateway
ixNet exec sendPing ::ixNet::OBJ-/vport:2/interface:1 1.1.1.1
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-69
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-76
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-77
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-78
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-79
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-91
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-103
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-104
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-105
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-106
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet exec start ::ixNet::OBJ-/topology:2
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-107
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet exec stop ::ixNet::OBJ-/topology:2
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-108
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet exec stop ::ixNet::OBJ-/topology:2
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-109
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet exec stop ::ixNet::OBJ-/topology:2
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-110
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet exec stop ::ixNet::OBJ-/topology:2
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-112
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-113
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-114
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-115
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-116
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-117
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-118
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-119
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getList ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-120
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getList ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-121
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -vports
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getList ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-17
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L5] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L5] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L6] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L6] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L7] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L7] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L8] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L8] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L9] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L9] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L10] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L10] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L11] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L11] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L12] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L12] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L13] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L13] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L14] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L14] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L15] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L15] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L16] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L16] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L17] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L17] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-18
ixNet exec saveConfig ::ixNet::FILEHANDLE-18
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L18] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L18] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L18] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L19] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L19] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L19] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L20] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L20] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L20] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L21] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L21] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L21] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L22] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L22] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L22] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L23] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L23] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L23] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L24] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L24] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L24] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L25] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L25] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L25] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L26] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L26] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L26] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L27] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L27] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L27] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L28] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L28] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L28] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L29] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L29] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L29] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L30] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L30] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L30] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L31] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L31] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L31] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L32] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L32] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L32] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L33] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L33] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L33] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L34 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-19
ixNet exec saveConfig ::ixNet::FILEHANDLE-19
ixNet exec saveConfig ::ixNet::FILEHANDLE-19
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L35] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L35] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L35] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L35] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L35] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L36] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L36] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L36] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L36] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L36] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-20
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L37] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L37] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L38] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L38] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L39] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L39] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L40] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L40] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L41] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L41] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L42] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L42] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L43] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L43] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L44] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L44] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L45] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L45] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L46] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L46] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L47] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L47] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L48] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L48] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L49] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L49] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-21
ixNet exec saveConfig ::ixNet::FILEHANDLE-21
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L50] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L50] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L50] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L51] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L51] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L51] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L52] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L52] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L52] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L53] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L53] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L53] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L54] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L54] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L54] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L55] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L55] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L55] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L56] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L56] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L56] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L57] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L57] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L57] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L58] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L58] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L58] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L59] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L59] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L59] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L60] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L60] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L60] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L61] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L61] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L61] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L62] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L62] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L62] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L63] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L63] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L63] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L64] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L64] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L64] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L65] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L65] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L65] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L66 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-22
ixNet exec saveConfig ::ixNet::FILEHANDLE-22
ixNet exec saveConfig ::ixNet::FILEHANDLE-22
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L67] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L67] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L67] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L67] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L67] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L68] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L69] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L69] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L69] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L69] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L69] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L70] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L70] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L70] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L70] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L70] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L71] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L71] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L71] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L71] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L71] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L72] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L72] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L72] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L72] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L72] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L73] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L73] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L73] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L73] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L73] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L74] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L74] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L74] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L74] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L74] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L75] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L75] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L75] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L75] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L75] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L76] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L76] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L76] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L76] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L76] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-23
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L77] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L77] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L78] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L78] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L79] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L79] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L80] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L80] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L81] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L81] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L82] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L82] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L83] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L83] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L84] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L84] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L85] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L85] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L86] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L86] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L87] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L87] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L88] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L88] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L89] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L89] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-24
ixNet exec saveConfig ::ixNet::FILEHANDLE-24
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L90] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L90] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L90] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L91] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L91] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L91] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L92] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L92] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L92] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L93] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L93] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L93] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L94] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L94] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L94] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L95] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L95] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L95] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L96] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L96] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L96] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L97] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L97] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L97] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L98] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L98] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L98] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L99] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L99] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L99] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L100] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L100] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L100] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L101] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L101] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L101] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L102] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L102] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L102] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L103] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L103] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L103] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L104] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L104] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L104] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L105] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L105] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L105] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L106 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-25
ixNet exec saveConfig ::ixNet::FILEHANDLE-25
ixNet exec saveConfig ::ixNet::FILEHANDLE-25
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L107] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L108] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L109] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L110] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L111] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L112] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L113] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L114] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L115] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L116] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.40-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.40.929.15 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {configs/ngpf_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-26
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixTclNet::AssignPorts  { {10.224.18.111 4 4} }   {}   {::ixNet::OBJ-/vport:1} 
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixTclNet::AssignPorts  { {10.224.18.111 4 5} }   {}   {::ixNet::OBJ-/vport:2} 
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -state
ixNet getList ::ixNet::OBJ-/ topology
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -name
ixNet exec startAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stopAllProtocols 
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec start ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:2
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:2}  -status
ixNet getList ::ixNet::OBJ-/topology:1 deviceGroup
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1}  -status
ixNet getList ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -name
ixNet exec start ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet exec stop ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -status
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {E:/Tcl/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-283
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1797] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1797] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1798] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1798] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L1799] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L1799] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1800] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1800] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L1801] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L1801] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1802] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1802] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1803] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1803] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L1804] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L1804] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1805] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1805] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L1806] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L1806] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L1807] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L1807] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1808] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1808] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1809] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1809] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-284
ixNet exec saveConfig ::ixNet::FILEHANDLE-284
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1810] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1810] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1810] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1811] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1811] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1811] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L1812] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L1812] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L1812] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1813] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1813] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L1813] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L1814] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L1814] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L1814] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1815] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1815] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1815] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1816] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1816] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1816] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L1817] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L1817] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L1817] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1818] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1818] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L1818] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L1819] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L1819] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L1819] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1820] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1820] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1820] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1821] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1821] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1821] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1822] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1822] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L1822] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1823] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1823] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L1823] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1824] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1824] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1824] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1825] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1825] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L1825] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L1826 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/Users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-285
ixNet exec saveConfig ::ixNet::FILEHANDLE-285
ixNet exec saveConfig ::ixNet::FILEHANDLE-285
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1827] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1827] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1827] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1827] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1827] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1828] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1828] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1828] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1828] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L1828] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1829] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1829] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1829] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1829] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1829] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L1830] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L1830] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L1830] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L1830] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L1830] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L1831] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L1831] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L1831] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L1831] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L1831] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L1832] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L1832] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L1832] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L1832] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L1832] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1833] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1833] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1833] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1833] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L1833] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L1834] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L1834] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L1834] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L1834] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L1834] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L1835] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L1835] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L1835] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L1835] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L1835] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L1836] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L1836] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L1836] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L1836] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L1836] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet exec newConfig 
ixNet commit 
ixNet readFrom  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/test_config.ixncfg} 
ixNet exec loadConfig ::ixNet::FILEHANDLE-569
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
::IxNetwork::GetAttributesClean {::ixNet::OBJ-/vport:1}
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -state
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1/ipv4}  -name
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2/interface:1 ipv4
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1/ipv4}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:1}
ixNet getList ::ixNet::OBJ-/vport:1 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:1/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:1 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:1 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:1 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:1/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:1 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:1/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:1 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:1/rateControlParameters}  -name
::IxNetwork::GetChildList {::ixNet::OBJ-/vport:2}
ixNet getList ::ixNet::OBJ-/vport:2 capture
ixNet getAttribute  {::ixNet::OBJ-/vport:2/capture}  -name
ixNet getList ::ixNet::OBJ-/vport:2 discoveredNeighbor
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interfaceDiscoveredAddress
ixNet getList ::ixNet::OBJ-/vport:2 l1Config
ixNet getAttribute  {::ixNet::OBJ-/vport:2/l1Config}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocols
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocols}  -name
ixNet getList ::ixNet::OBJ-/vport:2 protocolStack
ixNet getAttribute  {::ixNet::OBJ-/vport:2/protocolStack}  -name
ixNet getList ::ixNet::OBJ-/vport:2 rateControlParameters
ixNet getAttribute  {::ixNet::OBJ-/vport:2/rateControlParameters}  -name
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3142] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3142] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3143] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3143] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L3144] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L3144] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3145] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3145] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L3146] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L3146] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3147] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3147] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3148] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3148] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L3149] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L3149] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3150] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3150] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L3151] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L3151] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp -enabled  {True} 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet add ::ixNet::OBJ-/vport:1/protocols/bgp neighborRange 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L3152] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:L3152] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -bgpId  {1.1.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -interfaces  {::ixNet::OBJ-/vport:1/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/protocols/bgp/neighborRange:1 -localIpAddress  {0.0.0.0} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {One interface} 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3153] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3153] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3154] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3154] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1}  -destinations  {::ixNet::OBJ-/vport:2/interface:1} 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet writeTo  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testBasicConfig.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-570
ixNet exec saveConfig ::ixNet::FILEHANDLE-570
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3155] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3155] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3155] 0
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3156] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3156] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3156] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1 -description  {Port 1 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ethernet -macAddress  {00:11:22:33:1:1} 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L3157] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L3157] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:1/ipv4:L3157] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:1/ipv4 -ip  {1.2.1.1} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet add ::ixNet::OBJ-/vport:1 interface -name  {Port 1 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3158] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3158] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:L3158] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2 -description  {Port 1 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ethernet -macAddress  {00:11:22:33:1:2} 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:1/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L3159] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L3159] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:1/interface:2/ipv4:L3159] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:1/interface:2/ipv4 -ip  {1.2.1.2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3160] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3160] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3160] 0
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 1} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3161] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3161] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3161] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1 -description  {Port 2 int 1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ethernet -macAddress  {00:11:22:33:2:1} 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L3162] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L3162] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:1/ipv4:L3162] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:1/ipv4 -ip  {1.2.2.1} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet add ::ixNet::OBJ-/vport:2 interface -name  {Port 2 int 2} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3163] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3163] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:L3163] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -enabled  {True} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2 -description  {Port 2 int 2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ethernet -macAddress  {00:11:22:33:2:2} 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet add ::ixNet::OBJ-/vport:2/interface:2 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L3164] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L3164] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:2/interface:2/ipv4:L3164] 0
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet setMultiAttribute ::ixNet::OBJ-/vport:2/interface:2/ipv4 -ip  {1.2.2.2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:1/interface:2}  -description
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:1}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet getAttribute  {::ixNet::OBJ-/vport:2/interface:2}  -description
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {IPv4 TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3165] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3165] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3165] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:1}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1 -trafficType  {ipv4} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3166] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3166] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3166] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2}  -destinations  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:1 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3167] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3167] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:L3167] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:1/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/interface:1 ::ixNet::OBJ-/vport:2/interface:2}  -destinations  {::ixNet::OBJ-/vport:1/interface:1 ::ixNet::OBJ-/vport:1/interface:2} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet add ::ixNet::OBJ-//traffic trafficItem -name  {Raw TI with two EPs} 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3168] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3168] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:L3168] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficItemType  {l2L3} 
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet getAttribute  {::ixNet::OBJ-/traffic/trafficItem:2}  -trafficItemType
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2 -trafficType  {raw} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3169] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3169] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3169] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:1 -sources  {::ixNet::OBJ-/vport:1/protocols}  -destinations  {::ixNet::OBJ-/vport:2/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:1 -endpointSetId  {1} 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 endpointSet 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3170] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3170] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:L3170] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/endpointSet:2 -sources  {::ixNet::OBJ-/vport:2/protocols}  -destinations  {::ixNet::OBJ-/vport:1/protocols} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet add ::ixNet::OBJ-/traffic/trafficItem:2 highLevelStream 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171] 0
lindex [ixNet remapIds ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171] 0
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171 -endpointSetId  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/traffic/trafficItem:2/highLevelStream:L3171 -endpointSetId  {1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet writeTo  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet writeTo  {C:/users/bgp2/converter_workspace/IxNetwork/ixnetwork/test/configs/testFlowGroups.ixncfg} 
ixNet exec saveConfig ::ixNet::FILEHANDLE-571
ixNet exec saveConfig ::ixNet::FILEHANDLE-571
ixNet exec saveConfig ::ixNet::FILEHANDLE-571
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet exec newConfig 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3172] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3172] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3172] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3172] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3172] 0
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet add ::ixNet::OBJ-/ vport -name  {Port 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3173] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3173] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3173] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3173] 0
lindex [ixNet remapIds ::ixNet::OBJ-/vport:L3173] 0
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getList ::ixNet::OBJ-/ vport
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:1}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getAttribute  {::ixNet::OBJ-/vport:2}  -name
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:1 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet getList ::ixNet::OBJ-/vport:2 interface
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 1} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3174] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3174] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3174] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3174] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3174] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1 -vports  {::ixNet::OBJ-/vport:1} 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:1 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L3175] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L3175] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L3175] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L3175] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:L3175] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:1/deviceGroup:1 -multiplier  {1} 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L3176] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L3176] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L3176] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L3176] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:L3176] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L3177] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L3177] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L3177] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L3177] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:1/deviceGroup:1/ethernet:1/ipv4:L3177] 0
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet add ::ixNet::OBJ-/ topology -name  {Topo 2} 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3178] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3178] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3178] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3178] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:L3178] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2 -vports  {::ixNet::OBJ-/vport:2} 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet add ::ixNet::OBJ-/topology:2 deviceGroup 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L3179] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L3179] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L3179] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L3179] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:L3179] 0
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet setMultiAttribute ::ixNet::OBJ-/topology:2/deviceGroup:1 -multiplier  {2} 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1 ethernet 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L3180] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L3180] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L3180] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L3180] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:L3180] 0
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet getAttribute  {::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1}  -mac
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet add ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1 ipv4 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
ixNet commit 
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L3181] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L3181] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L3181] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L3181] 0
lindex [ixNet remapIds ::ixNet::OBJ-/topology:2/deviceGroup:1/ethernet:1/ipv4:L3181] 0
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
source  {C:/Program Files (x86)/Ixia/IxNetwork/7.50-EA/TclScripts/lib/IxTclNetwork/pkgIndex.tcl} 
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
package require IxTclNetwork
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
source  {C:/Tcl8532/lib/tgn/ixn_main.tcl} 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet connect localhost -port 8009 -version 7.50.1009.20 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
ixNet getRoot 
