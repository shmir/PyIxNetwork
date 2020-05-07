
import sys
import logging

import pytest

from trafficgenerator.tgn_utils import ApiType

try:
    from . import test_config
    api_ = test_config.api
    server_ = test_config.server
    license_server_ = test_config.license_server
except Exception as _:
    api_ = None
    server_ = None
    license_server_ = None


def pytest_addoption(parser):
    parser.addoption('--api', action='append', default=api_, help='api options: rest or tcl')
    parser.addoption('--server', action='append', default=server_, help='REST server in format ip:port')
    parser.addoption('--port1', action='store', default=None, help='chassis1/module1/port1')
    parser.addoption('--port2', action='store', default=None, help='chassis2/module2/port2')
    parser.addoption('--config-version', action='store', default=None, help='configuration version')
    parser.addoption('--auth', action='store', default=None, help='credentials')
    parser.addoption('--license-server', action='store', default=license_server_, help='license server IP address')


@pytest.fixture(scope='session')
def logger():
    logger = logging.getLogger('tgn')
    logger.setLevel(logging.DEBUG)
    logger.addHandler(logging.StreamHandler(sys.stdout))
    yield logger


@pytest.fixture
def server(request):
    yield request.param


@pytest.fixture
def api(request):
    yield ApiType[request.param]


@pytest.fixture(autouse=True)
def config(request, logger, server, api):
    request.cls.logger = logger
    request.cls.api = api
    request.cls.server_ip = server.split(':')[0]
    request.cls.server_port = int(server.split(':')[1]) if len(server.split(':')) == 2 else 11009
    if api == ApiType.tcl and request.cls.server_port == 11009:
        request.cls.server_port = 8009
    request.cls.locations = [_get_cli_or_property(request, server, 'port1'),
                             _get_cli_or_property(request, server, 'port2')]
    request.cls.auth = _get_cli_or_property(request, server, 'auth')
    request.cls.config_version = _get_cli_or_property(request, server, 'config-version')
    request.cls.license_server = request.config.getoption('--license-server')
    request.cls.install_dir = test_config.server_properties[server].get('install_dir', None)


def pytest_generate_tests(metafunc):
    metafunc.parametrize('api', metafunc.config.getoption('--api'), indirect=True)
    metafunc.parametrize('server', metafunc.config.getoption('--server'), indirect=True)


def _get_cli_or_property(request, server, option):
    if request.config.getoption('--' + option):
        return request.config.getoption('--' + option)
    else:
        return test_config.server_properties[server].get(option, None)
