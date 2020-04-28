"""
@author yoram@ignissoft.com
"""

import os
from enum import Enum
from typing import Dict

from ixnetwork.ixn_object import IxnObject


class TrafficEnd(Enum):
    """ Traffic end types.

    :todo: move to trafficgenerator.
    """

    source = 1
    destination = 2
    both = 3


class IxnTrafficItem(IxnObject):
    """ Base class for all traffic items """

    def __init__(self, **data):
        """ Create new traffic item object in the API. """
        data['objType'] = 'trafficItem'
        data['parent'] = self.root.get_child_static('traffic')
        super(IxnTrafficItem, self).__init__(**data)
        if 'objRef' not in data:
            # Set traffic item type.
            self.set_attributes(commit=True, trafficItemType=type_2_obj[type(self)])
        # Change new class to one of its sub-classes based on traffic item type.
        self.__class__ = type_2_obj[self.get_attribute('trafficItemType')]

    def _create(self):
        """ Create new object on IxNetwork.

        :return: IXN object reference.
        """

        if 'name' in self._data:
            obj_ref = self.api.add(self.obj_parent(), self.obj_type(), name=self.obj_name())
        else:
            obj_ref = self.api.add(self.obj_parent(), self.obj_type())
        self.api.commit()
        return self.api.remapIds(obj_ref)

    def get_flow_groups(self) -> Dict[str, IxnObject]:
        """ Returns all flow groups of the traffic item. """
        return {o.name: o for o in self.get_objects_or_children_by_type('highLevelStream')}
    flow_groups = property(get_flow_groups)

    def generate(self):
        self.execute('generate')

    def start(self):
        self.execute('startStatelessTraffic')

    def stop(self):
        self.execute('stopStatelessTraffic')


class IxnL23TrafficItem(IxnTrafficItem):
    """ L23 traffic item. """
    pass


class IxnQuickTrafficItem(IxnTrafficItem):
    """ L23 traffic item. """
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
        self.api.execute('generate', os.path.dirname(self.ref))


type_2_obj = {'l2L3': IxnL23TrafficItem,
              'quick': IxnQuickTrafficItem,
              IxnL23TrafficItem: 'l2L3',
              IxnQuickTrafficItem: 'quick'}
