[![Python 3.7|3.8|3.9](https://img.shields.io/badge/python-3.7%7C3.8%7C.3.9%7C.3.10-blue.svg)](https://www.python.org/downloads/release/downloads/)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Build status](https://github.com/shmir/PyTrafficGenerator/actions/workflows/python-package.yml/badge.svg?branch=dev)

TGN - Traffic Generator
IXN - IxNetwork

This package implements Python OO API for Ixia IxNetwork traffic generator.

The package works on top of multiple low level APIs:
1. IxnRestWrapper - a Python wrapper of IXN native REST API.

    Available for IXN versions that supports REST. Allows client-less operation of IXN scripts.
2. IxnTclWrapper - a Python wrapper (using Python Tk package) over IXN native Tcl API (IxTclNetwork).

    Available for all IXN versions. More useful when developing and debugging. 

Installation
------------
```bash
pip instsll pyixnetwork
```

Prerequisite:
When using Tcl - IxNetwork application installed. 

Getting started
---------------
Under `ixnetwork.test.ixn_samples` you will find some basic samples.
See inside for more info.

Functionality
-------------
The current version supports the following test flow:
- Load configuration -> Get/Set attributes -> Start/Stop traffic -> Get statistics.

Supported operations:
- Basic operations - get/set attributes, get/create children.
- Load configuration - load configuration (ixncfg), reserve ports and analyze the configuration
- Start/Stop - arp, ping, protocols, traffic items
- Statistics - read views
- Save configuration
- Disconnect

The package also support Add/Remove objects, so it supports the following test case:
- Build configuration -> Start/Stop traffic -> Get statistics.

  But this is less documented at this version.

TestCenter and IxNetwork
------------------------
IxNetwork package and TestCenter extend the same base classes from TrafficGenerator.
In some future version we plan TrafficGenerator a complete abstract API so tests that work in the basic test flow will
be able to run over IxNetwork and TestCenter seamlessly.   

Contact
-------
Feel free to contact me with any question or feature request at yoram@ignissoft.com
