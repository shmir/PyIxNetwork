"""
Base classes and utilities to manage IxNetwork (IXN).
"""
from __future__ import annotations

import re
from collections import OrderedDict
from typing import List, Optional, Type

from trafficgenerator.tgn_object import TgnObject
from trafficgenerator.tgn_utils import TgnError, is_true

IXNETWORK_OK = "::ixNet::OK"


def extract_ixn_obj_type_from_obj_ref(obj_ref):
    return extract_ixn_full_obj_type_from_obj_ref(obj_ref).split("/")[-1]


def extract_ixn_full_obj_type_from_obj_ref(obj_ref):
    return re.sub(":[0-9]+", "", obj_ref)


class IxnObject(TgnObject):
    """Base class for all IXN classes."""

    str_2_class: dict = {}

    root: Optional[IxnObject] = None

    def get_obj_class(self, obj_type: str) -> Type[IxnObject]:
        """Return the object class based on parent and object types.

        In most cases the object class can be derived from object type alone but sometimes the same object type name is
        used for different object types so the parent (or even grandparent) type is required in order to determine the
        exact object type.
        For example, interface object type can be child of vport or router (ospf etc.). In the first case the required
        class is IxnInterface while in the later case it is IxnObject.

        :param obj_type: IXN object type.
        :return: object class if specific class else IxnObject.
        """
        if obj_type in IxnObject.str_2_class:
            if isinstance(IxnObject.str_2_class[obj_type], dict):
                if self.type in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.type]
                if self.parent.type in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.parent.type]
            else:
                return IxnObject.str_2_class[obj_type]
        return IxnObject

    def _create(self, **attributes) -> str:
        """Create new object on IxNetwork.

        :return: IXN object reference.
        """
        if "name" in self._data:
            attributes["name"] = self.name
        obj_ref = self.api.add(self.parent, self.type, **attributes)
        if "view" in obj_ref:
            return obj_ref
        self.api.commit()
        return self.api.remapIds(obj_ref)

    def get_attributes(self, *attributes: str) -> dict:
        if not attributes:
            return self.get_all_attributes()
        attributes_values = {}
        for attribute in attributes:
            attributes_values[attribute] = self.get_attribute(attribute)
        return attributes_values

    def get_attribute(self, attribute: str) -> str:
        """Read attribute from IXN. Raises ValueError if attribute does not exist.

        :param attribute: requested attribute.
        :return: attribute value.
        :raise ValueError: if invalid attribute.
        """
        value = self.api.getAttribute(self.ref, attribute)
        # IXN returns '::ixNet::OK' for invalid attributes. We want error.
        if value == IXNETWORK_OK:
            raise ValueError(self.ref + " does not have attribute " + attribute)
        return str(value)

    def get_list_attribute(self, attribute: str) -> list:
        """Return attribute value as Python list.

        :param attribute: Requested attribute.
        """
        list_attribute = self.api.getListAttribute(self.ref, attribute)
        # IXN returns '::ixNet::OK' for invalid attributes. We want error.
        if list_attribute == [IXNETWORK_OK]:
            raise TgnError(self.ref + " does not have attribute " + attribute)
        if isinstance(list_attribute, str):
            list_attribute = [
                list_attribute,
            ]
        return list_attribute

    def get_children(self, *types: str) -> List[IxnObject]:
        """Read (getList) children from IXN.

        Use this method to align with current IXN configuration.

        :param types: list of requested children.
        :return: list of all children objects of the requested types.
        """
        children_objs = OrderedDict()
        if not types:
            types = self.get_all_child_types()
        for child_type in types:
            children_list = self.api.getList(self.ref, child_type)
            children_objs.update(self._build_children_objs(child_type, children_list))
        return list(children_objs.values())

    def get_child_static(self, obj_type: str, seq_number: Optional[int] = None) -> IxnObject:
        """Return IxnObject representing the requested child without reading it from the IXN.

        Statically build the child object reference based on the requested object type and sequence number and build
        the IxnObject with this calculated object reference.
        Ideally we would prefer to never use this function and always read the child dynamically but this has huge
        impact on performance so we use the static approach wherever possible.
        """
        child_obj_ref = self.ref + "/" + obj_type
        if seq_number:
            child_obj_ref += ":" + str(seq_number)
        child_obj = self.get_object_by_ref(child_obj_ref)
        child_obj_type = self.get_obj_class(obj_type)
        return child_obj if child_obj else child_obj_type(parent=self, objType=obj_type, objRef=child_obj_ref)

    def get_name(self) -> str:
        """Get object name. If object has no name return object reference."""
        name = self.api.getAttribute(self.ref, "name")
        if name == IXNETWORK_OK:
            name = self.ref
        return name

    def get_enabled(self) -> bool:
        enabled = self.get_attribute("enabled")
        return is_true(enabled) if enabled != IXNETWORK_OK else True

    def set_attributes(self, commit=False, **attributes) -> None:
        self.api.setAttributes(self.ref, **attributes)
        if commit:
            self.api.commit()

    def set_enabled(self, enabled: bool) -> None:
        self.set_attributes(enabled=enabled)

    def execute(self, command, *arguments):
        return self.api.execute(command, self.ref, True, *arguments)

    def help_(self):
        return self.api.help_(self.ref)

    def get_all_attributes(self):
        _, attributes, _ = self.help_()
        return {a: self.get_attribute(a) for a in attributes}

    def get_all_child_types(self):
        children, _, _ = self.help_()
        return children

    def get_objects_from_attribute(self, attribute):
        objects = []
        for handle in self.get_list_attribute(attribute):
            obj = self.root.get_object_by_ref(handle)
            if not obj:
                obj = IxnObject(objRef=handle, parent=self)
            objects.append(obj)
        return objects

    def get_ref_indices(self) -> list:
        """Return list of all indices in object reference."""
        ixn_obj = self
        ref_indices = []
        while ixn_obj != ixn_obj.root:
            ref_indices.append(ixn_obj.ref.rsplit(":", maxsplit=1)[-1])
            ixn_obj = ixn_obj.parent
        return ref_indices[::-1]
