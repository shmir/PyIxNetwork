"""
Classes and utilities to manage IXN HW.
"""
import re
from collections import OrderedDict

from ixnetwork.ixn_object import IxnObject


class IxnHw(IxnObject):
    def get_chassis(self, hostname):
        for chassis in self.get_objects_by_type("chassis"):
            if chassis.get_attribute("hostname") == hostname:
                return chassis
        chassis = IxnChassis(hostname=hostname)
        return chassis


class IxnPhyBase(IxnObject):

    attributes_names: tuple = ()
    children_types: dict = {}

    def get_inventory(self) -> None:
        self.attributes = self.get_attributes(*self.attributes_names)
        for child_var, child_type_index in self.children_types.items():
            child_type, child_index = child_type_index
            children = OrderedDict()
            for child in self.get_children(child_type):
                children[int(child.get_attribute(child_index))] = child
            setattr(self, child_var, children)
            for child in getattr(self, child_var).values():
                child.get_inventory()


class IxnChassis(IxnPhyBase):

    attributes_names = ("chassisType", "chassisVersion")
    children_types = {"cards": ("card", "cardId")}

    def __init__(self, **data):
        data["parent"] = self.root.hw
        data["objType"] = "chassis"
        super().__init__(**data)
        self.card_refs = self.api.getList(self.ref, "card")
        self.cards = OrderedDict()

    def _create(self, **attributes):
        return super()._create(hostname=self._data["hostname"], **attributes)

    def get_card(self, card_id):
        if card_id not in self.cards:
            for card_ref in self.card_refs:
                if card_id == int(re.split("/|:", card_ref)[-1]):
                    self.cards[card_id] = IxnCard(parent=self, ObjType="card", objRef=card_ref)
                    break
        return self.cards[card_id]


class IxnCard(IxnPhyBase):

    attributes_names = ("description",)
    children_types = {"ports": ("port", "portId")}

    def __init__(self, **data):
        super().__init__(**data)
        self.port_refs = self.api.getList(self.ref, "port")
        self.ports = OrderedDict()

    def get_port(self, port_id):
        if port_id not in self.ports:
            self.ports[port_id] = IxnPhyPort(parent=self, ObjType="port", objRef=self.port_refs[port_id - 1])
        return self.ports[port_id]


class IxnPhyPort(IxnPhyBase):

    attributes_names = ("description",)
    children_types: dict = {}

    def release(self) -> None:
        self.execute("clearOwnership", (self.ref,))
