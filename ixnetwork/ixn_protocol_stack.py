"""
Classes and utilities to manage IXN protocol stack objects.
"""

from ixnetwork.ixn_object import IxnObject


class IxnProtocolStack(IxnObject):
    def action(self, oper):
        self.execute(oper, self.obj_ref())

    def start(self):
        self.action("start")

    def stop(self):
        self.action("stop")


class IxnProtocolEndpoint(IxnProtocolStack):
    pass


class IxnEthernetEndpoint(IxnProtocolEndpoint):
    def __init__(self, **data):
        """Create new Ethernet endpoint object in the API.

        :param parent: parent port object.
        """
        data["parent"] = data["parent"].get_child_static("protocolStack")
        data["objType"] = "ethernetEndpoint"
        super().__init__(**data)


class IxnDcbxEndpoint(IxnProtocolEndpoint):
    def __init__(self, **data):
        """Create new DCBX endpoint object in the API.

        :param parent: parent port object.
        """
        data["parent"] = IxnObject(parent=data["parent"].get_child_static("protocolStack"), objType="ethernet")
        data["objType"] = "dcbxEndpoint"
        super().__init__(**data)


class IxnFcoeClientEndpoint(IxnProtocolEndpoint):
    def __init__(self, **data):
        """Create new FCoE client endpoint object in the API.

        :param parent: parent port object.
        """
        data["parent"] = IxnObject(parent=data["parent"].get_child_static("protocolStack"), objType="ethernet")
        data["objType"] = "fcoeClientEndpoint"
        super().__init__(**data)


class IxnFcoeForwarderEndpoint(IxnProtocolEndpoint):
    def __init__(self, **data):
        """Create new FCoE forwarder endpoint object in the API.

        :param parent: parent port object.
        """
        data["parent"] = IxnObject(parent=data["parent"].get_child_static("protocolStack"), objType="ethernet")
        data["objType"] = "fcoeFwdEndpoint"
        super().__init__(**data)


class IxnRange(IxnProtocolStack):
    def __init__(self, **data):
        """Create new range object in the API.

        :param parent: parent endpoint object.
        """
        data["objType"] = "range"
        super().__init__(**data)
