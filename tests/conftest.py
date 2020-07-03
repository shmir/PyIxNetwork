
import sys
import logging
from pathlib import Path
from typing import List

import pytest
from _pytest.config.argparsing import Parser
from _pytest.python import Metafunc
from _pytest.fixtures import SubRequest

from trafficgenerator.tgn_utils import ApiType
from ixnetwork.ixn_app import init_ixn, IxnApp
from .test_base import get_test_config


ixn_config = Path(__file__).parent.joinpath('test_config.py').as_posix()
if Path(ixn_config).exists():
    test_config = get_test_config(ixn_config)
    ixn_api = test_config.api
    ixn_server = test_config.server
else:
    ixn_api = None
    ixn_server = None
    ixn_config = None


def pytest_addoption(parser: Parser) -> None:
    """ Add options to allow the user to determine which APIs and servers to test. """
    parser.addoption('--ixn-api', action='append', default=ixn_api, help='api options: rest or tcl')
    parser.addoption('--ixn-server', action='append', default=ixn_server, help='server name in the configuration file')
    parser.addoption('--ixn-config', action='store', default=ixn_config, help='path to configuration file')


def pytest_generate_tests(metafunc: Metafunc) -> None:
    """ Generate tests for each API, server, and protocls from pytest options. """
    metafunc.parametrize('api', metafunc.config.getoption('--ixn-api'), indirect=True)
    metafunc.parametrize('server', metafunc.config.getoption('--ixn-server'), indirect=True)


@pytest.fixture(scope='session')
def logger() -> logging.Logger:
    """ Yields configured logger. """
    logger = logging.getLogger('ixnetwork')
    logger.setLevel(logging.DEBUG)
    logger.addHandler(logging.StreamHandler(sys.stdout))
    yield logger


@pytest.fixture(scope='session')
def api(request: SubRequest) -> ApiType:
    """ Yield API type - generate tests will generate API types based on the api option. """
    yield ApiType[request.param]


@pytest.fixture(scope='session')
def server(request: SubRequest) -> str:
    """ Yields server name in confing file - generate tests will generate servers based on the server option. """
    yield request.param


@pytest.fixture(scope='session')
def server_properties(request: SubRequest, server: str) -> dict:
    """ Yields server properties dict for the requested server. """
    yield get_test_config(request.config.getoption('--ixn-config')).server_properties[server]


@pytest.fixture(scope='session')
def ixnetwork(request: SubRequest, logger: logging.Logger, api: ApiType, server_properties: dict) -> IxnApp:
    """ Yields connected IxNetwork object. """

    server_ip = server_properties['server'].split(':')[0]
    server_port = int(server_properties['server'].split(':')[1])
    if api == ApiType.tcl and server_port == 11009:
        server_port = 8009

    if api == ApiType.tcl and server_port == 443:
        pytest.skip('REST server does not support Tcl')

    install_dir = server_properties.get('install_dir', None)
    ixnetwork = init_ixn(api, logger, install_dir)
    auth = server_properties.get('auth', None)
    ixnetwork.connect(server_ip, server_port, auth)
    if api == ApiType.rest:
        license_servers = get_test_config(request.config.getoption('--ixn-config')).license_servers
        ixnetwork.api.set_licensing(licensingServers=license_servers)

    yield ixnetwork

    for port in ixnetwork.root.ports.values():
        port.release()
    ixnetwork.disconnect()


@pytest.fixture(scope='session')
def locations(server_properties: dict) -> List[str]:
    """ Yields connected IxNetwork object. """
    yield server_properties['locations']


@pytest.fixture
def skip_if_linux(server_properties):
    """ Skip test on Linux servers. """
    server_port = int(server_properties['server'].split(':')[1])
    if server_port == 443:
        pytest.skip('Linux server does not support classical protocols')
