
chassis_01 = '192.168.42.61'
chassis_40 = '192.168.42.207'
chassis_50 = '192.168.65.53'

linux_40 = '192.168.65.49:443'
linux_50 = '192.168.65.73:443'
linux_52 = '192.168.65.47:443'

windows_01 = '192.168.65.39:11009'
windows_40 = '192.168.65.68:11009'
windows_50_http = 'localhost:11009'
windows_50_https = '192.168.65.94:11009'
windows_52_https = '192.168.65.81:11009'

linux_servers = [linux_40, linux_50, linux_52]
windows_servers = [windows_40, windows_50_http, windows_50_https, windows_52_https]

server_properties = {linux_40: {'chassis': chassis_40, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_50: {'chassis': chassis_50, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_52: {'chassis': None, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     windows_01: {'chassis': chassis_01, 'auth': None, 'config_version': 'classic',
                                  'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.01-GA'},
                     windows_40: {'chassis': chassis_40, 'auth': None, 'config_version': 'classic',
                                  'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.40-EA'},
                     windows_50_http: {'chassis': chassis_50, 'auth': None, 'config_version': 'classic',
                                       'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.50-EA'},
                     windows_50_https: {'chassis': chassis_50, 'auth': None, 'config_version': 'classic',
                                        'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.50-EA'},
                     windows_52_https: {'chassis': None, 'auth': None, 'config_version': 'classic',
                                        'install_dir': 'E:/Program Files (x86)/Ixia/IxNetwork/8.52-EA'}}
