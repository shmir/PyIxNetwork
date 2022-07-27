"""
ixnetwork test configuration file.
"""
chassis_900 = "192.168.65.36"
chassis_910 = "172.30.150.123"

linux_900 = "192.168.65.34:443"
linux_910 = "192.168.65.23:443"

windows_900 = "localhost:11009"
windows_910 = "localhost:11009"

cm_900 = "172.40.0.204:443"

server_properties = {
    "linux_900": {"server": linux_900, "locations": [f"{chassis_900}/1/1", f"{chassis_900}/1/2"], "auth": ("admin", "admin")},
    "linux_910": {"server": linux_910, "locations": [f"{chassis_910}/1/1", f"{chassis_910}/1/2"], "auth": ("admin", "admin")},
    "windows_900": {
        "server": windows_900,
        "locations": [f"{chassis_900}/1/1", f"{chassis_900}/1/2"],
        "auth": None,
        "install_dir": "C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16",
    },
    "windows_910": {
        "server": windows_910,
        "locations": [f"{chassis_910}/1/1", f"{chassis_910}/1/2"],
        "auth": None,
        "install_dir": "C:/Program Files (x86)/Ixia/IxNetwork/9.10.2007.7",
    },
    "cm_900": {
        "server": cm_900,
        "locations": [f"{chassis_900}/1/1", f"{chassis_900}/1/2"],
        "auth": None,
        "install_dir": "C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16",
    },
}

license_servers = ["172.30.150.123"]

# Default for options.
api = ["tcl"]
server = ["windows_910"]
