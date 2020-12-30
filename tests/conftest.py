"""
Pytest conftest for ixnetwork package testing.
"""

import logging
from pathlib import Path
from typing import List

import pytest
from _pytest.config.argparsing import Parser
from _pytest.fixtures import SubRequest

from trafficgenerator.tgn_utils import ApiType, get_test_config
from trafficgenerator.tgn_conftest import (tgn_pytest_addoption, pytest_generate_tests, logger, api, server,
                                           server_properties)
from ixnetwork.ixn_app import init_ixn, IxnApp


def pytest_addoption(parser: Parser) -> None:
    """ Add options to allow the user to determine which APIs and servers to test. """
    tgn_pytest_addoption(parser, Path(__file__).parent.joinpath('test_config.py').as_posix())


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
        license_servers = get_test_config(request.config.getoption('--tgn-config')).license_servers
        ixnetwork.api.set_licensing(licensingServers=license_servers)

    yield ixnetwork

    for port in ixnetwork.root.ports.values():
        port.release()
    ixnetwork.disconnect()


@pytest.fixture(scope='session')
def locations(server_properties: dict) -> List[str]:
    """ Yields ports locations. """
    return server_properties['locations']


@pytest.fixture
def skip_if_linux(server_properties):
    """ Skip test on Linux servers. """
    server_port = int(server_properties['server'].split(':')[1])
    if server_port == 443:
        pytest.skip('Linux server does not support classical protocols')
