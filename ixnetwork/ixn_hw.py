"""
Classes and utilities to manage IXN HW.

@author yoram@ignissoft.com
"""

from collections import OrderedDict

from ixnetwork.ixn_object import IxnObject


class IxnHw(IxnObject):

    def get_chassis(self, hostname):
        for chassis in self.get_children('chassis'):
            if chassis.get_attribute('hostname') == hostname:
                return chassis
        return IxnChassis(hostname=hostname)


class IxnPhyBase(IxnObject):

    def get_inventory(self):
        self.attributes = self.get_attributes(*self.attributes_names)
        for child_var, child_type_index in self.children_types.items():
            child_type, child_index = child_type_index
            children = OrderedDict()
            for child in self.get_children(child_type):
                children[child.get_attribute(child_index)] = child
            setattr(self, child_var, children)
            for child in getattr(self, child_var).values():
                child.get_inventory()


class IxnChassis(IxnPhyBase):

    attributes_names = ('chassisType', 'chassisVersion')
    children_types = {'modules': ('card', 'cardId')}

    def __init__(self, **data):
        data['parent'] = self.root.hw
        data['objType'] = 'chassis'
        super(self.__class__, self).__init__(**data)

    def _create(self):
        return super(self.__class__, self)._create(hostname=self._data['hostname'])


class IxnCard(IxnPhyBase):

    attributes_names = ('description',)
    children_types = {'ports': ('port', 'portId')}


class IxnPhyPort(IxnPhyBase):

    attributes_names = ('description',)
    children_types = {}
