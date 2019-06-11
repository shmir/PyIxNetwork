
import pytest

from trafficgenerator.tgn_utils import ApiType


def_api = 'rest'
server = 'localhost'
if def_api == 'rest':
    server += ':11009'
else:
    server += ':8009'
chassis = '192.168.42.207'
chassis = '192.168.65.53'


def pytest_addoption(parser):
    parser.addoption('--api', action='store', default=def_api, help='api options: rest or tcl')
    parser.addoption('--server', action='store', default=server, help='REST server in format ip:port')
    parser.addoption('--chassis', action='store', default=chassis, help='chassis IP address')
    parser.addoption('--port1', action='store', default='1/1', help='module1/port1')
    parser.addoption('--port2', action='store', default='1/2', help='module2/port2')


@pytest.fixture
def api(request):
    request.cls.api = ApiType[request.param]


@pytest.fixture(autouse=True)
def config(request):
    server_ip = request.config.getoption('--server')  # @UndefinedVariable
    request.cls.server_ip = server_ip.split(':')[0]
    request.cls.server_port = server_ip.split(':')[1] if len(server_ip.split(':')) == 2 else 8009
    chassis = request.config.getoption('--chassis')  # @UndefinedVariable
    request.cls.port1 = '{}/{}'.format(chassis, request.config.getoption('--port1'))  # @UndefinedVariable
    request.cls.port2 = '{}/{}'.format(chassis, request.config.getoption('--port2'))  # @UndefinedVariable


def pytest_generate_tests(metafunc):
    if metafunc.config.getoption('--api') == 'all':
        apis = ['tcl', 'rest']
    else:
        apis = [metafunc.config.getoption('--api')]
    metafunc.parametrize('api', apis, indirect=True)
