
import pytest

from trafficgenerator.tgn_utils import ApiType


license_server_ = '192.168.42.61'

api_ = 'tcl_'
api_ = 'rest'

auth_ = ('admin', 'admin')

chassis_01 = '192.168.42.61'
chassis_40 = '192.168.42.207'
chassis_50 = '192.168.65.53'

localhost = 'localhost:11009'

linux_40 = '192.168.65.49:443'
linux_50 = '192.168.65.73:443'
linux_52 = '192.168.65.47:443'

windows_40 = '192.168.65.46:11009'
windows_50_http = 'localhost:11009'
windows_50_https = '192.168.65.94:11009'
windows_52_https = '192.168.65.81:11009'

linux_servers = ['linux_40', 'linux_50', 'linux_52']
windows_servers = ['windows_40', 'windows_50_http', 'windows_50_https', 'windows_52_https']

server_properties = {linux_40: {'chassis': chassis_40, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_50: {'chassis': chassis_50, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     linux_52: {'chassis': None, 'auth': ('admin', 'admin'), 'config_version': 'ngpf'},
                     windows_40: {'chassis': chassis_40, 'auth': None, 'config_version': 'classic'},
                     windows_50_http: {'chassis': chassis_50, 'auth': None, 'config_version': 'classic'},
                     windows_50_https: {'chassis': chassis_50, 'auth': None, 'config_version': 'classic'},
                     windows_52_https: {'chassis': None, 'auth': None, 'config_version': 'classic'}}

server_ = 'all'
chassis_ = None
config_version_ = None

def pytest_addoption(parser):
    parser.addoption('--api', action='store', default=api_, help='api options: rest or tcl')
    parser.addoption('--server', action='store', default=server_, help='REST server in format ip:port')
    parser.addoption('--chassis', action='store', default=chassis_, help='chassis IP address')
    parser.addoption('--port1', action='store', default='1/1', help='module1/port1')
    parser.addoption('--port2', action='store', default='1/2', help='module2/port2')
    parser.addoption('--config-version', action='store', default=config_version_, help='configuration version',)
    parser.addoption('--license-server', action='store', default=license_server_, help='license server IP address',)


@pytest.fixture
def server(request):
    yield globals().get(request.param, request.param)


@pytest.fixture
def api(request):
    request.cls.api = ApiType[request.param]


@pytest.fixture(autouse=True)
def config(request, server):
    request.cls.server_ip = server.split(':')[0]
    request.cls.server_port = server.split(':')[1] if len(server.split(':')) == 2 else 8009
    if request.config.getoption('--chassis'):
        chassis = request.config.getoption('--chassis')
    else:
        chassis = server_properties[server]['chassis']
    request.cls.port1 = '{}/{}'.format(chassis, request.config.getoption('--port1'))  # @UndefinedVariable
    request.cls.port2 = '{}/{}'.format(chassis, request.config.getoption('--port2'))  # @UndefinedVariable
    request.cls.auth = server_properties[server]['auth']
    if request.config.getoption('--config-version'):
        request.cls.config_version = request.config.getoption('--config-version')
    else:
        request.cls.config_version = server_properties[server]['config_version']
    request.cls.license_server = [request.config.getoption('--license-server')]


def pytest_generate_tests(metafunc):
    if metafunc.config.getoption('--api') == 'all':
        apis = ['tcl', 'rest']
    else:
        apis = [metafunc.config.getoption('--api')]
    metafunc.parametrize('api', apis, indirect=True)
    if metafunc.config.getoption('--server') == 'linux':
        servers = linux_servers
    elif metafunc.config.getoption('--server') == 'windows':
        servers = windows_servers
    elif metafunc.config.getoption('--server') == 'all':
        servers = linux_servers + windows_servers
    else:
        servers = [metafunc.config.getoption('--server')]
    metafunc.parametrize('server', servers, indirect=True)
