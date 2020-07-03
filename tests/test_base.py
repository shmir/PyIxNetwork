#
# Auxiliary functions, no testing inside.
#

from pathlib import Path
import importlib.util
import inspect
from types import ModuleType
from typing import List, Optional

from ixnetwork.ixn_app import IxnApp


def get_test_config(test_config_path: str) -> ModuleType:
    """ Import tests configuration modeule from path.

    :param test_config_path: Full path to test configuration module.
    """
    spec = importlib.util.spec_from_file_location('test_config', test_config_path)
    test_config = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(test_config)
    return test_config


def load_config(ixnetwork: IxnApp, config_name: str) -> None:
    """ Load configuration file to IxNetwork.

    :param ixnetwork: IxNetwork server.
    :param config_name: path to ixncfg file name. Eitheir full path or shortcut (without ixncfg suffix) to config file
        under tests/configs sub-directory.
    """
    config_file = Path(config_name)
    if not config_file.exists():
        config_file = Path(__file__).parent.joinpath(f'configs/{config_name}.ixncfg')
    ixnetwork.new_config()
    ixnetwork.load_config(config_file.as_posix())
    ixnetwork.commit()


def save_config(ixnetwork: IxnApp, config_file: Optional[str] = None) -> None:
    """ Download and save configuration from IxNetwork.

    :param ixnetwork: IxNetwork server.
    :param config_file: Path to ixncfg file name. If empty configuration will be saved as
        tests/configs/temp/{test_name}.ixncfg.
    """
    if not config_file:
        test_name = inspect.stack()[1][3]
        config_file = Path(__file__).parent.joinpath(f'configs/temp/{test_name}.ixncfg').as_posix()
    ixnetwork.save_config(Path(config_file))


def reserve_ports(ixnetwork: IxnApp, locations: List[str], wait_for_up: bool = True) -> None:
    """ Reserver ports.

    :param ixnetwork: IxNetwork server.
    :param locations: Ports locations as chassis/card/port.
    :param wait_for_up: True - wait for ports to come up (timeout after 80 seconds), False - return immediately.
    """
    ports = ixnetwork.root.ports.values()
    for port, location in list(zip(ports, locations)):
        port.reserve(location, force=False, wait_for_up=False)
    if wait_for_up:
        for port in ports:
            port.wait_for_up(80)
