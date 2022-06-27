"""
IxNetwork Statistics Views.
"""
import time
from collections import OrderedDict
from typing import Dict, List

from trafficgenerator.tgn_tcl import py_list_to_tcl_list, tcl_str
from trafficgenerator.tgn_utils import TgnError, is_false

from ixnetwork.api.ixn_rest import IxnRestWrapper
from ixnetwork.api.ixn_tcl import IxnTclWrapper
from ixnetwork.ixn_app import IxnRoot
from ixnetwork.ixn_object import IxnObject


class IxnStatisticsView:
    """Base class for all statistics view.

    Note that Flow Statistics are poorly supported in this version as the object name spans over multiple column.
    """

    def __init__(self, name: str, name_caption: str) -> None:
        """Get requested view object from IXN.

        :param name: Statistics view name.
        :param name_caption: The name caption of the statistics view == the name of the key column in the statistics table.
        """
        self.name = name
        self.name_caption = name_caption
        statistics = IxnRoot.root.get_child_static("statistics")
        if isinstance(IxnRoot.root.api, IxnRestWrapper):
            views = statistics.get_children("view")
            for view in views:
                if view.get_attribute("caption") == self.name:
                    self.ixn_view = view
                    break
        else:
            self.ixn_view = statistics.get_child_static(f'view:"{self.name}"')

        self.captions: List[str] = []
        self.statistics: Dict[str, str] = OrderedDict()

    def __str__(self) -> str:
        """Return IxNetwork statistics view name as the object name."""
        return self.name

    def read_stats(self) -> None:
        """Read the statistics view from IXN and saves it in statistics dictionary."""
        captions, rows = self._get_pages()
        name_caption_index = captions.index(self.name_caption)
        captions.pop(name_caption_index)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            name = row.pop(name_caption_index)
            self.statistics[name] = row

    def get_all_stats(self) -> Dict[str, Dict[str, str]]:
        """Table of all statistics values for all objects."""
        all_stats = OrderedDict()
        for obj_name in self.statistics:
            all_stats[obj_name] = self.get_object_stats(obj_name)
        return all_stats

    def get_object_stats(self, obj_name: str) -> Dict[str, str]:
        """Return table of all statistics values for the requested object.

        :param obj_name: requested object name
        """
        return dict(zip(self.captions, self.statistics[obj_name]))

    def get_stats(self, stat_name: str) -> List[str]:
        """Return list of all values of the requested statistic for all objects.

        :param stat_name: requested statistics name.
        """
        return [self.get_stat(r, stat_name) for r in self.statistics.keys()]

    def get_stat(self, obj_name: str, stat_name: str) -> str:
        """Return the value of the requested statics for the requested object.

        :param obj_name: requested object name.
        :param stat_name: requested statistics name.
        """
        return self.statistics[obj_name][self.captions.index(stat_name)]

    def get_counters(self, counter_name: str) -> List[int]:
        """Return list of all int values of the requested counter for all objects.

        :param counter_name: requested counter name.
        """
        return [int(c) for c in self.get_stats(counter_name)]

    def get_counter(self, obj_name: str, counter_name: str) -> int:
        """Return the int value of the requested counter for the requested object.

        :param obj_name: requested object name.
        :param counter_name: requested counter name.
        """
        return int(self.get_stat(obj_name, counter_name))

    def _get_pages(self) -> tuple:
        page = self.ixn_view.get_child_static("page")
        if is_false(page.get_attribute("isReady")):
            raise TgnError(f'"{page.obj}" not ready')
        captions = page.get_list_attribute("columnCaptions")
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute("totalPages")) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += page.get_list_attribute("pageValues")
        return captions, rows


class IxnPortStatistics(IxnStatisticsView):
    """Port statistics view."""

    def __init__(self) -> None:
        """Get Port Statistics view object from IXN."""
        super().__init__("Port Statistics", "Port Name")


class IxnTrafficItemStatistics(IxnStatisticsView):
    """Traffic items view."""

    def __init__(self) -> None:
        """Get Traffic Item Statistics view object from IXN."""
        super().__init__("Traffic Item Statistics", "Traffic Item")


class IxnUserDefinedStatistics(IxnStatisticsView):
    """User defined statistics view."""

    def __init__(self, name_caption: str) -> None:
        """Get User Defined Statistics view object from IXN.

        :param name_caption: The name caption of the statistics view == the name of the key column in the statistics table.
        """
        super().__init__("User Defined Statistics", name_caption)


class IxnFlowStatistics(IxnStatisticsView):
    """Floe statistics view."""

    def __init__(self) -> None:
        """Get Flow Statistics view object from IXN."""
        super().__init__("Flow Statistics", "Tx Frames")

    def read_stats(self) -> None:
        """Read the statistics view from IXN and saves it in statistics dictionary.

        Flow statistics require special implementation as the statistics name is dynamic and changes based on the
        configuration.
        """
        captions, rows = self._get_pages()
        name_caption_index = captions.index("Tx Frames")
        for _ in range(name_caption_index):
            captions.pop(0)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            name = ""
            for _ in range(name_caption_index):
                name += row.pop(0) + "/"
            name = name[:-1]
            self.statistics[name] = row


class IxnDrillDownStatistics:
    """Drill-down statistics view.

    Current implementation supports only layer23TrafficPort and layer23TrafficItem.

    :TODO: Extend to all types on drill down.
    """

    TYPE_2_AVAILABLE = {"layer23TrafficItem": "availableTrafficItemFilter", "layer23TrafficPort": "availablePortFilter"}
    TYPE_2_FILTER_CHILD = {"layer23TrafficItem": "layer23TrafficItemFilter", "layer23TrafficPort": "layer23TrafficPortFilter"}
    TYPE_2_FILTER_ATTR = {"layer23TrafficItem": "trafficItemFilterIds", "layer23TrafficPort": "portFilterIds"}

    def __init__(self, caption: str, type_: str) -> None:
        self.type = type_
        statistics = IxnRoot.root.get_child_static("statistics")
        self.ixn_view = IxnObject(parent=statistics, objType="view")
        self.ixn_view.set_attributes(caption=caption)
        self.ixn_view.set_attributes(commit=True, type=self.type)
        self.ixn_view._data["objRef"] = self.ixn_view.api.remapIds(self.ixn_view.ref)

    def set_filter(self, row: str) -> None:
        """Set drill down filter object."""
        available_traffic_item_filter = self.ixn_view.get_children(IxnDrillDownStatistics.TYPE_2_AVAILABLE[self.type])
        filter_obj = self.ixn_view.get_child_static(IxnDrillDownStatistics.TYPE_2_FILTER_CHILD[self.type])
        filter_attr = IxnDrillDownStatistics.TYPE_2_FILTER_ATTR[self.type]
        available_traffic_item_filter_refs = [r.ref for r in available_traffic_item_filter if r.name == row]
        if isinstance(IxnRoot.root.api, IxnTclWrapper):
            available_traffic_item_filter_refs = py_list_to_tcl_list(available_traffic_item_filter_refs)
        filter_obj.set_attributes(**{filter_attr: available_traffic_item_filter_refs})
        for statistic in self.ixn_view.get_children("statistic"):
            statistic.set_attributes(enabled=True)
        self.ixn_view.set_attributes(commit=True, visible=True, enabled=True)

    @staticmethod
    def drill_down(option: str, row_index: int) -> None:
        """Perform the drill-down operation."""
        ti_stats = IxnTrafficItemStatistics()
        drill_down = ti_stats.ixn_view.get_child_static("drillDown")
        drill_down.set_attributes(commit=True, targetRowIndex=row_index)
        drill_down.get_attribute("availableDrillDownOptions")
        drill_down.set_attributes(commit=True, targetDrillDownOption=option)
        drill_down.get_attribute("targetRowIndex")
        drill_down.get_attribute("targetRow")
        drill_down.get_attribute("targetDrillDownOption")
        IxnRoot.root.api.commit()
        drill_down_ref = tcl_str(drill_down.ref) if isinstance(IxnRoot.root.api, IxnTclWrapper) else drill_down.ref
        drill_down.execute("doDrillDown", drill_down_ref)
        time.sleep(10)


def remove_all_tcl_views() -> None:
    """Perform removeAllTclViews."""
    IxnRoot.root.execute("removeAllTclViews")
    IxnRoot.root.api.commit()
