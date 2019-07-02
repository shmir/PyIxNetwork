
import pytest

from trafficgenerator.tgn_utils import ApiType
import ixnetwork.test.test_config

api_ = 'all'
license_server_ = '192.168.42.61'
auth_ = ('admin', 'admin')
server_ = 'all'
chassis_ = None
config_version_ = None

def pytest_addoption(parser):
    parser.addoption('--api', action='store', default=api_, help='api options: rest or tcl')
    parser.addoption('--server', action='store', default=server_, help='REST server in format ip:port')
    parser.addoption('--chassis', action='store', default=chassis_, help='chassis IP address')
    parser.addoption('--port', action='append', default=['1/1', '1/2'], help='module1/port1')
    parser.addoption('--config-version', action='store', default=config_version_, help='configuration version',)
    parser.addoption('--license-server', action='store', default=license_server_, help='license server IP address',)


@pytest.fixture
def server(request):
    yield globals().get(request.param, request.param)


@pytest.fixture
def api(request):
    request.cls.api = ApiType[request.param]
    yield request.cls.api


@pytest.fixture(autouse=True)
def config(request, server, api):
    request.cls.server_ip = server.split(':')[0]
    request.cls.server_port = int(server.split(':')[1]) if len(server.split(':')) == 2 else 11009
    if api == ApiType.tcl and request.cls.server_port == 11009:
        request.cls.server_port = 8009
    if request.config.getoption('--chassis'):
        chassis = request.config.getoption('--chassis')
    else:
        chassis = ixnetwork.test.test_config.server_properties[server]['chassis']
    if chassis:
        request.cls.locations = ['{}/{}'.format(chassis, p) for p in request.config.getoption('--port')]
    else:
        request.cls.locations = None
    request.cls.auth = ixnetwork.test.test_config.server_properties[server]['auth']
    if request.config.getoption('--config-version'):
        request.cls.config_version = request.config.getoption('--config-version')
    else:
        request.cls.config_version = ixnetwork.test.test_config.server_properties[server]['config_version']
    request.cls.license_server = [request.config.getoption('--license-server')]
    request.cls.install_dir = ixnetwork.test.test_config.server_properties[server].get('install_dir', None)


def pytest_generate_tests(metafunc):
    if metafunc.config.getoption('--api') == 'all':
        apis = ['tcl', 'rest']
    else:
        apis = [metafunc.config.getoption('--api')]
    metafunc.parametrize('api', apis, indirect=True)
    if metafunc.config.getoption('--server') == 'linux':
        servers = ixnetwork.test.test_config.linux_servers
    elif metafunc.config.getoption('--server') == 'windows':
        servers = ixnetwork.test.test_config.windows_servers
    elif metafunc.config.getoption('--server') == 'all':
        servers = ixnetwork.test.test_config.linux_servers + ixnetwork.test.test_config.windows_servers
    else:
        servers = [metafunc.config.getoption('--server')]
    metafunc.parametrize('server', servers, indirect=True)
