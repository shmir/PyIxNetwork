
import pytest

from trafficgenerator.tgn_utils import ApiType


def pytest_addoption(parser):
    parser.addoption('--api', action='store', default='rest', help='api options: rest or tcl')
    parser.addoption('--server', action='store', default='172.40.0.228:8008', help='REST server in format ip:port')
    parser.addoption('--chassis', action='store', default='192.168.42.184', help='chassis IP address')
    parser.addoption('--port1', action='store', default='1/1', help='module1/port1')
    parser.addoption('--port2', action='store', default='1/2', help='module2/port2')


@pytest.fixture
def api(request):
    request.cls.api = ApiType[request.param]


def pytest_generate_tests(metafunc):
    if metafunc.config.getoption('--api') == 'all':
        apis = ['tcl', 'rest']
    else:
        apis = [metafunc.config.getoption('--api')]
    metafunc.parametrize('api', apis, indirect=True)
