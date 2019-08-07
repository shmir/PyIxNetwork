
chassis_01 = '192.168.42.61'
chassis_40 = '192.168.42.207'
chassis_50 = '192.168.65.30'
chassis_90 = '192.168.65.22'

linux_40 = '192.168.65.27:443'
linux_50 = '192.168.65.73:443'
linux_90 = '192.168.65.23:443'

windows_01 = '192.168.65.39:11009'
windows_40 = '192.168.65.68:11009'
windows_50 = '192.168.65.94:11009'
windows_90_http = 'localhost:11009'
windows_90_https = '192.168.65.25:11009'

cm_90 = '172.40.0.148:443'

all = 'all'
subset = 'subset'

linux_servers = [linux_40, linux_50, linux_90]
cm_servers = [cm_90]
windows_servers = [windows_01, windows_40, windows_50, windows_90_http, windows_90_https]
subset_servers = [windows_90_http, windows_90_https, linux_90, cm_90]

server_properties = {linux_40: {'chassis': chassis_40, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_50: {'chassis': chassis_50, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_90: {'chassis': chassis_90, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     windows_01: {'chassis': chassis_01, 'auth': None, 'config_version': 'classic',
                                  'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.01-GA'},
                     windows_40: {'chassis': chassis_40, 'auth': None, 'config_version': 'classic',
                                  'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.40-EA'},
                     windows_50: {'chassis': chassis_50, 'auth': None, 'config_version': 'classic',
                                  'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.50-EA'},
                     windows_90_http: {'chassis': chassis_90, 'auth': None, 'config_version': 'classic',
                                       'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'},
                     windows_90_https: {'chassis': chassis_90, 'auth': None, 'config_version': 'classic',
                                        'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'},
                     cm_90: {'chassis': chassis_90, 'auth': None, 'config_version': 'classic',
                             'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/9.00.1915.16'}}
