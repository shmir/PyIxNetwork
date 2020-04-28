"""
Base classes and utilities to manage IxNetwork (IXN).

:author: yoram@ignissoft.com
"""
from __future__ import annotations
import re
from collections import OrderedDict
from typing import Type

from trafficgenerator.tgn_utils import is_true, TgnError
from trafficgenerator.tgn_object import TgnObject


def extract_ixn_obj_type_from_obj_ref(obj_ref):
    return extract_ixn_full_obj_type_from_obj_ref(obj_ref).split('/')[-1]


def extract_ixn_full_obj_type_from_obj_ref(obj_ref):
    return re.sub(':[0-9]+', '', obj_ref)


class IxnObject(TgnObject):
    """ Base class for all IXN classes. """

    # Class level variables
    str_2_class = {}

    def get_obj_class(self, obj_type: str) -> Type[IxnObject]:
        """ Returns the object class based on parent and object types.

        In most cases the object class can be derived from object type alone but sometimes the same object type name is
        used for different object types so the parent (or even grandparent) type is required in order to determine the
        exact object type.
        For example, interface object type can be child of vport or router (ospf etc.). In the first case the required
        class is IxnInterface while in the later case it is IxnObject.

        :param obj_type: IXN object type.
        :return: object class if specific class else IxnObject.
        """
        if obj_type in IxnObject.str_2_class:
            if type(IxnObject.str_2_class[obj_type]) is dict:
                if self.type in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.type]
                elif self.parent.type in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.parent.type]
            else:
                return IxnObject.str_2_class[obj_type]
        return IxnObject

    def _create(self, **attributes):
        """ Create new object on IxNetwork.

        :return: IXN object reference.
        """

        if 'name' in self._data:
            attributes['name'] = self.obj_name()
        obj_ref = self.api.add(self.obj_parent(), self.obj_type(), **attributes)
        self.api.commit()
        return self.api.remapIds(obj_ref)

    def get_attributes(self, *attributes):
        if not attributes:
            return self.get_all_attributes(self.obj_ref())
        attributes_values = {}
        for attribute in attributes:
            attributes_values[attribute] = self.get_attribute(attribute)
        return attributes_values

    def get_attribute(self, attribute):
        """
        :param attribute: requested attributes.
        :return: attribute value.
        :raise TgnError: if invalid attribute.
        """
        value = self.api.getAttribute(self.ref, attribute)
        # IXN returns '::ixNet::OK' for invalid attributes. We want error.
        if value == '::ixNet::OK':
            raise TgnError(self.ref + ' does not have attribute ' + attribute)
        return str(value)

    def get_list_attribute(self, attribute):
        """
        :return: attribute value as Python list.
        """
        list_attribute = self.api.getListAttribute(self.ref, attribute)
        # IXN returns '::ixNet::OK' for invalid attributes. We want error.
        if list_attribute == ['::ixNet::OK']:
            raise TgnError(self.ref + ' does not have attribute ' + attribute)
        if type(list_attribute) is not list:
            list_attribute = [list_attribute,]
        return list_attribute

    def get_children(self, *types):
        """ Read (getList) children from IXN.

        Use this method to align with current IXN configuration.

        :param types: list of requested children.
        :return: list of all children objects of the requested types.
        """

        children_objs = OrderedDict()
        if not types:
            types = self.get_all_child_types(self.obj_ref())
        for child_type in types:
            children_list = self.api.getList(self.ref, child_type)
            children_objs.update(self._build_children_objs(child_type, children_list))
        return list(children_objs.values())

    def get_child_static(self, objType, seq_number=None):
        """ Returns IxnObject representing the requested child without reading it from the IXN.

        Statically build the child object reference based on the requested object type and sequence number and build
        the IxnObject with this calculated object reference.
        Ideally we would prefer to never use this function and always read the child dynamically but this has huge
        impact on performance so we use the static approach wherever possible.
        """
        child_obj_ref = self.ref + '/' + objType
        if seq_number:
            child_obj_ref += ':' + str(seq_number)
        child_obj = self.get_object_by_ref(child_obj_ref)
        child_obj_type = self.get_obj_class(objType)
        return child_obj if child_obj else child_obj_type(parent=self, objType=objType, objRef=child_obj_ref)

    def get_name(self):
        name = self.api.getAttribute(self.obj_ref(), 'name')
        if name == '::ixNet::OK':
            name = self.obj_parent().obj_name() + self.obj_ref()[len(self.obj_parent().obj_ref()):]
        return name

    def get_enabled(self):
        enabled = self.get_attribute('enabled')
        return is_true(enabled) if enabled != '::ixNet::OK' else True

    def set_attributes(self, commit=False, **attributes):
        self.api.setAttributes(self.ref, **attributes)
        if commit:
            self.api.commit()

    def set_enabled(self, enabled):
        self.set_attributes(enabled=enabled)

    def execute(self, command, *arguments):
        return self.api.execute(command, self.ref, True, *arguments)

    def help(self, objRef):
        return self.api.help(self.obj_ref())

    def get_all_attributes(self, objRef):
        _, attributes, _ = self.help(objRef)
        return {a: self.get_attribute(a) for a in attributes}

    def get_all_child_types(self, objRef):
        children, _, _ = self.help(objRef)
        return children

    def get_objects_from_attribute(self, attribute):
        objects = []
        for handle in self.get_list_attribute(attribute):
            obj = self.root.get_object_by_ref(handle)
            if not obj:
                obj = IxnObject(objRef=handle, parent=self)
            objects.append(obj)
        return objects

    def get_ref_indices(self):
        """
        :return: list of all indices in object reference.
        """

        ixn_obj = self
        ref_indices = []
        while ixn_obj != ixn_obj.root:
            ref_indices.append(ixn_obj.ref.split(':')[-1])
            ixn_obj = ixn_obj.parent
        return ref_indices[::-1]
