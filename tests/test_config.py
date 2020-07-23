
chassis_850 = '192.168.65.30'
chassis_900 = '192.168.65.88'

linux_850 = '192.168.65.73:443'
linux_900 = '192.168.65.23:443'

windows_900 = 'localhost:11009'

cm_900 = '192.168.42.199:443'

server_properties = {'linux_850': {'server': linux_850,
                                   'locations': [f'{chassis_850}/1/1', f'{chassis_850}/1/2'],
                                   'auth': ('admin', 'admin')},
                     'linux_900': {'server': linux_900,
                                   'locations': [f'{chassis_900}/1/1', f'{chassis_900}/1/2'],
                                   'auth': ('admin', 'admin')},
                     'windows_900': {'server': windows_900,
                                     'locations': [f'{chassis_900}/1/1', f'{chassis_900}/1/2'],
                                     'auth': None,
                                     'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'},
                     'cm_900': {'server': cm_900,
                                'locations': [f'{chassis_900}/1/1', f'{chassis_900}/1/2'],
                                'auth': None,
                                'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'}}

license_servers = ['192.168.42.61']

# Default for options.
api = ['tcl']
server = ['windows_900']
