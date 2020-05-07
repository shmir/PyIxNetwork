
chassis_801 = '192.168.42.61'
chassis_840 = '192.168.42.207'
chassis_850 = '192.168.65.30'
chassis_900 = '192.168.65.22'

linux_840 = '192.168.65.27:443'
linux_850 = '192.168.65.73:443'
linux_900 = '192.168.65.23:443'

windows_801 = '192.168.65.39:11009'
windows_840 = '192.168.65.68:11009'
windows_850 = '192.168.65.94:11009'
windows_900_http = 'localhost:11009'
windows_900_https = 'localhost:11009'

cm_900 = '192.168.42.199:443'

server_properties = {linux_840: {'port1': '{}/1/1'.format(chassis_840), 'port2': '{}/1/2'.format(chassis_840),
                                 'auth': ('admin', 'admin'), 'config-version': 'ngpf'},
                     linux_850: {'port1': '{}/1/1'.format(chassis_850), 'port2': '{}/1/2'.format(chassis_850),
                                 'auth': ('admin', 'admin'), 'config-version': 'ngpf'},
                     linux_900: {'port1': '{}/1/1'.format(chassis_900), 'port2': '{}/1/2'.format(chassis_900),
                                 'auth': ('admin', 'admin'), 'config-version': 'ngpf'},
                     windows_801: {'port1': '{}/1/1'.format(chassis_801), 'port2': '{}/1/2'.format(chassis_801),
                                   'auth': None, 'config-version': 'classic',
                                   'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/8.01-GA'},
                     windows_840: {'port1': '{}/1/1'.format(chassis_840), 'port2': '{}/1/2'.format(chassis_840),
                                   'auth': None, 'config-version': 'classic',
                                   'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/8.40-EA'},
                     windows_850: {'port1': '{}/1/1'.format(chassis_850), 'port2': '{}/1/2'.format(chassis_850),
                                   'auth': None, 'config-version': 'classic',
                                   'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/8.50-EA'},
                     windows_900_http: {'port1': '{}/1/1'.format(chassis_900), 'port2': '{}/1/2'.format(chassis_900),
                                        'auth': None, 'config-version': 'classic',
                                        'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'},
                     windows_900_https: {'port1': '{}/1/1'.format(chassis_900), 'port2': '{}/1/2'.format(chassis_900),
                                         'auth': None, 'config-version': 'classic',
                                         'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'},
                     cm_900: {'port1': '{}/1/1'.format(chassis_900), 'port2': '{}/1/2'.format(chassis_900),
                              'auth': None, 'config-version': 'classic',
                              'install_dir': 'C:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'}}

api = ['rest']
server = [windows_900_http]
license_server = ['192.168.42.61']
