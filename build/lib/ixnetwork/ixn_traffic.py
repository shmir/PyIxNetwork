"""
"""

import os

from ixn_object import IxnObject


class IxnTrafficItem(IxnObject):
    """ Base class for all traffic items """

    def __init__(self, **data):
        """ Create new traffic item object in the API. """
        data['objType'] = 'trafficItem'
        data['parent'] = self.root.get_child_static('traffic')
        super(IxnTrafficItem, self).__init__(**data)
        if 'objRef' not in data:
            # Set traffic item type.
            self.set_attributes(trafficItemType=type_2_obj[type(self)])
        # Change new class to one of its sub-classes based on traffic item type.
        self.__class__ = type_2_obj[self.get_attribute('trafficItemType')]

    def generate(self):
        self.api.execute('generate', self.getObjRef())


class IxnL23TrafficItem(IxnTrafficItem):
    """ L23 traffic item. """

    def start(self):
        self.api.execute('startStatelessTraffic', self.getObjRef())

    def stop(self):
        self.api.execute('stopStatelessTraffic', self.getObjRef())


class IxnL47TrafficItem(IxnTrafficItem):
    """ L47 traffic item """
    pass


class IxnL47AppLibraryTraffic(IxnL47TrafficItem):
    """ L47 App library traffic item """
    pass


class IxnFlowGroup(IxnObject):
    """ Base class for all IXN flow groups. """
    pass


class IxnL23FlowGroup(IxnFlowGroup):
    """ L23 flow group """
    pass


class IxnL23QuickFlowGroup(IxnFlowGroup):
    """ L23 quick flow group """

    def generate(self):
        self.api.execute('generate', os.path.dirname(self.obj_ref()))


type_2_obj = {'l2L3': IxnL23TrafficItem,
              'quick': IxnL23QuickFlowGroup,
              IxnL23TrafficItem: 'l2L3',
              IxnL23QuickFlowGroup: 'quick'}
