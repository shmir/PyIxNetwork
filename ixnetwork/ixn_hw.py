"""
Classes and utilities to manage IXN HW.

@author yoram@ignissoft.com
"""

from ixn_object import IxnObject


class IxnHw(IxnObject):

    def __init__(self, **data):
        """ Create new available hardware object, note that is is already exist in the API. """

        data['parent'] = self.root
        data['objRef'] = self.root.obj_ref() + '/' + 'availableHardware'
        data['objType'] = 'availableHardware'
        super(self.__class__, self).__init__(**data)

    def get_chassis(self, hostname):
        for chassis in self.get_children('chassis'):
            if chassis.get_attribute('hostname') == hostname:
                return chassis
        return IxnChassis(hostname=hostname)


class IxnChassis(IxnObject):

    def __init__(self, **data):

        super(self.__class__, self).__init__(**data)
        if 'hostname' in data:
            self.set_attributes(hostname=data['hostname'])
