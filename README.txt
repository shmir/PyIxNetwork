
TGN - Traffic Generator
IXN - IxNetwork

This package implements Python OO API for Ixia IxNetwork traffic generator.

The package works on top of multiple low level APIs:
1. IxnRestWrapper - a Python wrapper of IXN native REST API.
Available for IXN versions that supports REST.
Allows client less operation of IXN scripts.
2. IxnTclWrapper - a Python wrapper (using Python Tk package) over IXN native Tcl API (IxTclNetwork) .
Available for all IXN versions.
Instead of using Tk (and IxTclNetwork package) the calling application can provide its own connection to Tcl
interpreter as long as the connection supports the 'eval' command and can perform IXN Tcl API commands.
3. IxnPythonWrapper - a Python wrapper over IXN native Python API.
Available for IXN versions that	support python.
4. Any IxnCustomerApi as long as it supports the same API as all above APIs support (define ABC).

Installation:
stable - pip instsll ixnooapi

Prerequisite:
When using Tcl or Python wrappers - IxNetwork application installed. 

Getting started:
Under ixnetwork.test.ixn_samples you will find some basic samples.
See inside for more info.

Functionality
The current version supports the following test flow:
- Load configuration -> Get/Set attributes -> Start/Stop traffic -> Get statistics.
Supported operations:
- Basic operations - get/set attributes, get/create children.
- Load configuration - load configuration (ixncfg), reserve ports and analyze the configuration
- Start/Stop - arp, ping, protocols, traffic items
- Statistics - read views
- Save configuration
- Disconnect
The package also support Add/Remove objects so it supports the following test case:
- Build configuration -> Start/Stop traffic -> Get statistics.
But this is less documented at this version.

TestCenter and IxNetwork:
IxNetwork package and TestCenter extend the same base classes from TrafficGenerator.
In some future version we plan TrafficGenerator a complete abstract API so tests that work in the basic test flow will
be able to run over IxNetwork and TestCenter seamlessly.   

Contact:
Feel free to contact me with any question or feature request at yoram@ignissoft.com
