"""
Base classes and utilities to manage IxNetwork (IXN).

:author: yoram@ignissoft.com
"""

import re
from collections import OrderedDict

from trafficgenerator.tgn_utils import is_true, TgnError
from trafficgenerator.tgn_object import TgnObject


def extract_ixn_obj_type_from_obj_ref(obj_ref):
    return re.search('.*/(.*)', obj_ref).group(1).split(':')[0]


class IxnObject(TgnObject):
    """ Base class for all IXN classes. """

    # Class level variables
    logger = None
    root = None
    api = None

    str_2_class = {}

    def get_obj_class(self, obj_type):
        """ Returns the object class based on parent and object types.

        In most cases the object class can be derived from object type alone but sometimes the
        same object type name is used for different object types so the parent (or even
        grandparent) type is required in order to determine the exact object type.
        For example, interface object type can be child of vport or router (ospf etc.). In the
        first case the required class is IxnInterface while in the later case it is IxnObject.

        :param obj_type: IXN object type.
        :return: object class if specific class else IxnObject.
        """

        if obj_type in IxnObject.str_2_class:
            if type(IxnObject.str_2_class[obj_type]) is dict:
                if self.obj_type() in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.obj_type()]
                elif self.obj_parent().obj_type() in IxnObject.str_2_class[obj_type]:
                    return IxnObject.str_2_class[obj_type][self.obj_parent().obj_type()]
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
        value = self.api.getAttribute(self.obj_ref(), attribute)
        # IXN returns '::ixNet::OK' for invalid attributes. We want error.
        if value == '::ixNet::OK':
            raise TgnError(self.obj_ref() + ' does not have attribute ' + attribute)
        return value

    def get_list_attribute(self, attribute):
        """
        :return: attribute value as Python list.
        """
        return self.api.getListAttribute(self.obj_ref(), attribute)

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
            children_list = self.api.getList(self.obj_ref(), child_type)
            children_objs.update(self._build_children_objs(child_type, children_list))
        return list(children_objs.values())

    def get_child_static(self, objType, seq_number=None):
        """ Returns IxnObject representing the requested child without reading it from the IXN.

        Statically build the child object reference based on the requested object type and sequence number and build
        the IxnObject with this calculated object reference.
        Ideally we would prefer to never use this function and always read the child dynamically but this has huge
        impact on performance so we use the static approach wherever possible.
        """
        child_obj_ref = self.obj_ref() + '/' + objType
        if seq_number:
            child_obj_ref += ':' + str(seq_number)
        return IxnObject(parent=self, objType=objType, objRef=child_obj_ref)

    def get_name(self):
        # self.get_attribute() will throw error in case name does not exists so we bypass it.
        name = self.api.getAttribute(self.obj_ref(), 'name')
        return name if name != '::ixNet::OK' else self.obj_ref()

    def get_enabled(self):
        enabled = self.api.getAttribute(self.obj_ref(), 'enabled')
        return is_true(enabled) if enabled != '::ixNet::OK' else True

    def set_attributes(self, commit=False, **attributes):
        self.api.setAttributes(self.obj_ref(), **attributes)
        if commit:
            self.api.commit()

    def set_enabled(self, enabled):
        self.set_attributes(enabled=enabled)

    def execute(self, command, *arguments):
        return self.api.execute(command, self.obj_ref(), *arguments)

    def help(self, objRef):
        output = self.api.help(self.obj_ref())
        children = None
        if 'Child Lists:' in output:
            children = output.split('Child Lists:')[1].split('Attributes:')[0].split('Execs:')[0]
        attributes = None
        if 'Attributes:' in output:
            attributes = output.split('Attributes:')[1].split('Execs:')[0]
        execs = None
        if 'Execs:':
            execs = output.split('Execs:')[1]
        return children.strip().split('\n'), attributes.strip().split('\n'), execs.strip().split('\n')

    def get_all_attributes(self, objRef):
        _, attributes, _ = self.help(objRef)
        attr_vals = {}
        for attribute in [attribute.strip().split()[0][1:] for attribute in attributes]:
            attr_vals[attribute] = self.get_attribute(attribute)
        return attr_vals

    def get_all_child_types(self, objRef):
        children, _, _ = self.help(objRef)
        return [attribute.strip().split()[0] for attribute in children]
