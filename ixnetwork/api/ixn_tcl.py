"""
Implements IxNetwork API over IxNetwork Tcl package - IxTclNetwork.
"""
import re
from os import path
from sys import platform

from trafficgenerator.tgn_tcl import (
    TgnTclWrapper,
    build_obj_ref_list,
    get_args_pairs,
    py_list_to_tcl_list,
    tcl_file_name,
    tcl_list_2_py_list,
    tcl_str,
)
from trafficgenerator.tgn_utils import TgnError

if platform == "win32":
    pkgIndex_tail = "TclScripts/lib/IxTclNetwork/pkgIndex.tcl"
else:
    pkgIndex_tail = "lib/IxTclNetwork/pkgIndex.tcl"


# pylint: disable=too-many-public-methods, unused-argument
class IxnTclWrapper(TgnTclWrapper):
    """IxNetwork API over IxNetwork Tcl package - IxTclNetwork."""

    null = "::ixNet::OBJ-null"

    def __init__(self, logger, ixn_install_dir, tcl_interp=None):
        super().__init__(logger, tcl_interp)
        self.source(path.join(ixn_install_dir, pkgIndex_tail))
        self.eval("package require IxTclNetwork")

    def ixnCommand(self, command, *arguments):
        return self.eval("ixNet " + command + " " + " ".join(arguments))

    #
    # IxNetwork built in commands ordered alphabetically.
    #

    def commit(self):
        return self.ixnCommand("commit")

    def connect(self, ip, port, auth=None):
        client_version = self.getVersion()
        self.ixnCommand("connect " + ip + " -port " + str(port) + " -version " + client_version)
        major_client_version = re.findall(r"^[\d]+.[\d]+", client_version)[0]
        client_version = client_version.split(".")[:2]
        buildNumber = self.getAttribute(self.getRoot() + "/globals", "buildNumber")
        major_server_version = re.findall(r"^[\d]+.[\d]+", buildNumber)[0]
        if major_client_version != major_server_version:
            raise TgnError(f"Client version {major_client_version} != Server version {major_server_version}")
        return client_version

    def disconnect(self) -> None:
        pass

    # pylint: disable=keyword-arg-before-vararg
    def execute(self, command, obj_ref=None, valid_on_linux=True, *arguments):
        flatten_arguments = []
        for argument in arguments:
            flatten_arguments.append(" ".join(argument) if type(argument) in [list, tuple] else argument)
        return self.ixnCommand("exec " + command, *flatten_arguments)

    def getList(self, obj_ref: str, childList):
        children_list = self.ixnCommand("getList", obj_ref, childList)
        return tcl_list_2_py_list(tcl_str(children_list))

    def getAttribute(self, obj_ref: str, attribute: str) -> str:
        """Get current value of the requested attribute."""
        return self.ixnCommand("getAttribute", tcl_str(obj_ref), "-" + attribute)

    def getListAttribute(self, obj_ref: str, attribute: str) -> list:
        return tcl_list_2_py_list(self.getAttribute(obj_ref, attribute))

    def help_(self, obj_ref: str) -> tuple:
        output = self.ixnCommand("help", obj_ref)
        children_list = None
        if "Child Lists:" in output:
            children = output.split("Child Lists:")[1].split("Attributes:")[0].split("Execs:")[0]
            children_list = [c.strip().split()[0] for c in children.strip().split("\n")]
        attributes_list = None
        if "Attributes:" in output:
            attributes = output.split("Attributes:")[1].split("Execs:")[0]
            attributes_list = [a.strip().split()[0][1:] for a in attributes.strip().split("\n")]
        execs_list = None
        if "Execs:" in output:
            execs = output.split("Execs:")[1]
            execs_list = [e.strip().split()[0] for e in execs.strip().split("\n")]
        return children_list, attributes_list, execs_list

    def getRoot(self) -> str:
        return self.ixnCommand("getRoot")

    def getVersion(self) -> str:
        return self.ixnCommand("getVersion")

    def loadConfig(self, config_file_name: str) -> None:
        self.execute("loadConfig", None, True, self.ixnCommand("readFrom", tcl_file_name(config_file_name)))

    def save_config(self, config_file_name: str) -> None:
        """Download ixncfg file from server to local file."""
        self.execute("saveConfig", None, True, self.ixnCommand("writeTo", tcl_file_name(config_file_name)))

    def newConfig(self) -> None:
        self.execute("newConfig")

    def setAttributes(self, obj_ref: str, **attributes) -> None:
        string_attributes = {}
        for attribute, value in attributes.items():
            string_attributes[attribute] = py_list_to_tcl_list(value) if isinstance(value, list) else value
        self.ixnCommand("setMultiAttribute", tcl_str(obj_ref), get_args_pairs(string_attributes))

    def add(self, parent, obj_type, **attributes) -> str:
        """IXN API add command.

        :param parent: object parent - object will be created under this parent.
        :param obj_type: object type.
        :param attributes: additional attributes.
        :return: IXN object reference.
        """
        return self.ixnCommand("add", parent.obj_ref(), obj_type, get_args_pairs(attributes))

    def remove(self, obj_ref) -> None:
        """IXN API remove command.

        :param obj_ref: object reference to remove.
        """
        self.ixnCommand("remove", obj_ref)

    def remapIds(self, obj_ref) -> str:
        return self.eval("lindex [ixNet remapIds " + obj_ref + "] 0")

    def regenerate(self, _, *traffic_items) -> None:
        if traffic_items:
            self.execute("generate", None, True, tcl_str(build_obj_ref_list(*traffic_items)))

    def startStatelessTraffic(self, _, *traffic_items) -> None:
        self.execute("startStatelessTraffic", None, True, tcl_str(build_obj_ref_list(*traffic_items)))

    def stopStatelessTraffic(self, _, *traffic_items) -> None:
        self.execute("stopStatelessTraffic", None, True, tcl_str(build_obj_ref_list(*traffic_items)))
