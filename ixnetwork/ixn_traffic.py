"""
IxNetwork Traffic classes and functionality.
"""
import os
from enum import Enum
from typing import Dict

from ixnetwork.ixn_object import IxnObject


class TrafficEnd(Enum):
    """Traffic end types.

    :todo: move to trafficgenerator.
    """

    source = 1
    destination = 2
    both = 3


class IxnTrafficItem(IxnObject):
    """Base class for all traffic items."""

    def __init__(self, **data: str) -> None:
        """Create new traffic item object in the API."""
        data["objType"] = "trafficItem"
        data["parent"] = self.root.get_child_static("traffic")
        super().__init__(**data)
        if "objRef" not in data:
            # Set traffic item type.
            self.set_attributes(commit=True, trafficItemType=type_2_obj[type(self)])
        # Change new class to one of its sub-classes based on traffic item type.
        self.__class__ = type_2_obj[self.get_attribute("trafficItemType")]  # type: ignore

    def _create(self, **attributes) -> str:
        """Create new object on IxNetwork.

        :return: IXN object reference.
        """
        if "name" in self._data:
            obj_ref = self.api.add(self.parent, self.type, name=self.name, **attributes)
        else:
            obj_ref = self.api.add(self.parent, self.type, **attributes)
        self.api.commit()
        return self.api.remapIds(obj_ref)

    def get_flow_groups(self) -> Dict[str, IxnObject]:
        """Return all flow groups of the traffic item."""
        return {o.name: o for o in self.get_objects_or_children_by_type("highLevelStream")}

    flow_groups = property(get_flow_groups)

    def generate(self) -> None:
        self.execute("generate")

    def start(self) -> None:
        self.execute("startStatelessTraffic")

    def stop(self) -> None:
        self.execute("stopStatelessTraffic")


class IxnL23TrafficItem(IxnTrafficItem):
    """L23 traffic item."""


class IxnQuickTrafficItem(IxnTrafficItem):
    """L23 traffic item."""


class IxnFlowGroup(IxnObject):
    """Base class for all IXN flow groups."""


class IxnL23FlowGroup(IxnFlowGroup):
    """L23 flow group."""


class IxnL23QuickFlowGroup(IxnFlowGroup):
    """L23 quick flow group."""

    def generate(self) -> None:
        self.api.execute("generate", os.path.dirname(self.ref))


type_2_obj = {"l2L3": IxnL23TrafficItem, "quick": IxnQuickTrafficItem, IxnL23TrafficItem: "l2L3", IxnQuickTrafficItem: "quick"}
