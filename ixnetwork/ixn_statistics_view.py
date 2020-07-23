
import time
from collections import OrderedDict
from typing import List, Dict

from trafficgenerator.tgn_utils import is_false, TgnError
from trafficgenerator.tgn_tcl import tcl_str, py_list_to_tcl_list

from ixnetwork.ixn_app import IxnRoot
from ixnetwork.ixn_object import IxnObject
from ixnetwork.api.ixn_rest import IxnRestWrapper


def remove_all_tcl_views() -> None:
    IxnRoot.root.execute('removeAllTclViews')
    IxnRoot.root.api.commit()


class IxnStatisticsView:
    """ Base class for all statistics view.

    Note that Flow Statistics are poorly supported in this version as the object name spans over multiple column.
    """

    def __init__(self, name: str) -> None:
        """
        :param name: Statistics view name.
        """
        self.name_caption = view_2_caption.get(name, 'Port Name')
        statistics = IxnRoot.root.get_child_static('statistics')
        if type(IxnRoot.root.api) is IxnRestWrapper:
            views = statistics.get_children('view')
            for view in views:
                if view.get_attribute('caption') == name:
                    self.ixn_view = view
                    break
        else:
            self.ixn_view = statistics.get_child_static(f'view:"{name}"')

        self.captions = []
        self.statistics = OrderedDict()

    def __repr__(self) -> str:
        return self.ixn_view

    def read_stats(self) -> None:
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        captions, rows = self._get_pages()
        name_caption_index = captions.index(self.name_caption)
        captions.pop(name_caption_index)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            name = row.pop(name_caption_index)
            self.statistics[name] = row

    def get_all_stats(self) -> Dict[str, Dict[str, str]]:
        """ Table of all statistics values for all objects. """
        all_stats = OrderedDict()
        for obj_name in self.statistics:
            all_stats[obj_name] = self.get_object_stats(obj_name)
        return all_stats

    def get_object_stats(self, obj_name: str) -> Dict[str, str]:
        """ Returns table of all statistics values for the requested object.

        :param obj_name: requested object name
        """
        return dict(zip(self.captions, self.statistics[obj_name]))

    def get_stats(self, stat_name: str) -> List[str]:
        """ Returns list of all values of the requested statistic for all objects.

        :param stat_name: requested statistics name.
        """
        return [self.get_stat(r, stat_name) for r in self.statistics.keys()]

    def get_stat(self, obj_name: str, stat_name: str) -> str:
        """ Returns the value of the requested statics for the requested object.

        :param obj_name: requested object name.
        :param stat_name: requested statistics name.
        """
        return self.statistics[obj_name][self.captions.index(stat_name)]

    def get_counters(self, counter_name: str) -> List[int]:
        """ Returns list of all int values of the requested counter for all objects.

        :param counter_name: requested counter name.
        """
        return [int(c) for c in self.get_stats(counter_name)]

    def get_counter(self, obj_name: str, counter_name: str) -> int:
        """ Returns the int value of the requested counter for the requested object.

        :param obj_name: requested object name.
        :param counter_name: requested counter name.
        """
        return int(self.get_stat(obj_name, counter_name))

    def _get_pages(self):
        page = self.ixn_view.get_child_static('page')
        if is_false(page.get_attribute('isReady')):
            raise TgnError(f'"{page.obj}" not ready')
        captions = page.get_list_attribute('columnCaptions')
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute('totalPages')) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += page.get_list_attribute('pageValues')
        return captions, rows


class IxnPortStatistics(IxnStatisticsView):
    """ Port statistics view. """

    def __init__(self) -> None:
        super().__init__('Port Statistics')


class IxnTrafficItemStatistics(IxnStatisticsView):
    """ Traffic items view. """

    def __init__(self) -> None:
        super().__init__('Traffic Item Statistics')


class IxnUserDefinedStatistics(IxnStatisticsView):
    """ User defined statistics view. """

    def __init__(self) -> None:
        super().__init__('User Defined Statistics')


class IxnFlowStatistics(IxnStatisticsView):
    """ Floe statistics view. """

    def __init__(self) -> None:
        super().__init__('Flow Statistics')

    def read_stats(self) -> None:
        """ Reads the statistics view from IXN and saves it in statistics dictionary.

        Flow statistics require special implementation as the statistics name is dynamic and changes based on the
        configuration.
        """

        captions, rows = self._get_pages()
        name_caption_index = captions.index('Tx Frames')
        for _ in range(name_caption_index):
            captions.pop(0)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            name = ''
            for _ in range(name_caption_index):
                name += row.pop(0) + '/'
            name = name[:-1]
            self.statistics[name] = row


class IxnDrillDownStatistics(IxnStatisticsView):

    def __init__(self, type):
        statistics = IxnRoot.root.get_child_static('statistics')
        self.ixn_view = IxnObject(parent=statistics, objType='view')
        self.ixn_view.set_attributes(caption='Yoram')
        self.ixn_view.set_attributes(commit=True, type=type)
        self.ixn_view._data['objRef'] = self.ixn_view.api.remapIds(self.ixn_view.ref)

        availableTrafficItemFilter = self.ixn_view.get_children('availableTrafficItemFilter')

        filter = self.ixn_view.get_child_static('layer23TrafficItemFilter')
        filter.set_attributes(trafficItemFilterIds=py_list_to_tcl_list([r.ref for r in availableTrafficItemFilter]))
        for statistic in self.ixn_view.get_children('statistic'):
            statistic.set_attributes(enabled=True)
        self.ixn_view.set_attributes(commit=True, visible=True, enabled=True)

    def set_udf(self, option):
        ti_stats = IxnTrafficItemStatistics()
        dd = ti_stats.ixn_view.get_child_static('drillDown')
        dd.set_attributes(commit=True, targetRowIndex=0)
        dd.get_attribute('availableDrillDownOptions')
        dd.set_attributes(commit=True, targetDrillDownOption=option)
        dd.get_attribute('targetRowIndex')
        dd.get_attribute('targetRow')
        dd.get_attribute('targetDrillDownOption')
        IxnRoot.root.api.commit()
        dd.execute('doDrillDown', tcl_str(dd.ref))
        time.sleep(10)



view_2_caption = {'Flow Statistics': None,
                  'Port Statistics': 'Port Name',
                  'Traffic Item Statistics': 'Traffic Item',
                  'User Defined Statistics': 'IPv4 :Source Address',
                  }
