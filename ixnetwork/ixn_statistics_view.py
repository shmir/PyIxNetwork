"""
"""

import time

from collections import OrderedDict

from trafficgenerator.tgn_utils import is_false, TgnError
from trafficgenerator.tgn_tcl import tcl_list_2_py_list, tcl_str, py_list_to_tcl_list

from ixnetwork.ixn_object import IxnObject
from ixnetwork.api.ixn_rest import IxnRestWrapper
from ixnetwork.api.ixn_tcl import IxnTclWrapper


class IxnStatisticsView:
    """ Base class for all statistics view.

    Note that Flow Statistics are poorly supported in this version as the object name spans over multiple column.
    """

    def __init__(self, root, name):
        """
        todo: remove root param and use IxnObject.root instead?
        """
        self.root = root
        self.name_caption = view_2_caption.get(name, 'Port Name')
        statistics = self.root.get_child_static('statistics')
        if type(self.root.api) is IxnRestWrapper:
            views = statistics.get_children('view')
            for view in views:
                if view.get_attribute('caption') == name:
                    self.ixn_view = view
                    break
        else:
            self.ixn_view = statistics.get_child_static(f'view:"{name}"')

    def read_stats(self):
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        captions, rows = self._get_pages()
        name_caption_index = captions.index(self.name_caption)
        captions.pop(name_caption_index)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            # if type(self.ixn_view.api) == IxnTclWrapper:
            #     row = tcl_list_2_py_list(row[1:-1])
            name = row.pop(name_caption_index)
            self.statistics[name] = row

    def get_all_stats(self):
        """
        :returns: all statistics values for all objects.
        """

        all_stats = OrderedDict()
        for obj_name in self.statistics:
            all_stats[obj_name] = dict(zip(self.captions, self.statistics[obj_name]))
        return all_stats

    def get_object_stats(self, obj_name):
        """
        :param obj_name: requested object name
        :returns: all statistics values for the requested object.
        """

        return dict(zip(self.captions, self.statistics[obj_name]))

    def get_stats(self, stat_name):
        """
        :param stat_name: requested statistics name.
        :returns: all values of the requested statistic for all objects.
        """

        return [self.get_stat(r, stat_name) for r in self.statistics.keys()]

    def get_stat(self, obj_name, stat_name):
        """
        :param obj_name: requested object name.
        :param stat_name: requested statistics name.
        :return: str, the value of the requested statics for the requested object.
        """

        return self.statistics[obj_name][self.captions.index(stat_name)]

    def get_counters(self, counter_name):
        """
        :param stat_name: requested counter name.
        :returns: ints, all values of the requested counter for all objects.
        """

        return [int(c) for c in self.get_stats(counter_name)]

    def get_counter(self, obj_name, counter_name):
        """
        :param counter_name: requested counter name.
        :param stat_name: requested statistics name.
        :return: int, the value of the requested counter for the requested object.
        """

        return int(self.get_stat(obj_name, counter_name))

    def _get_pages(self):
        page = self.ixn_view.get_child_static('page')
        if is_false(page.get_attribute('isReady')):
            raise TgnError(f'"{page.obj}" not ready')
        caption = page.get_list_attribute('columnCaptions')
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute('totalPages')) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += page.get_list_attribute('pageValues')
        return caption, rows


class IxnPortStatistics(IxnStatisticsView):

    def __init__(self, root):
        super().__init__(root, 'Port Statistics')


class IxnTrafficItemStatistics(IxnStatisticsView):

    def __init__(self, root):
        super().__init__(root, 'Traffic Item Statistics')


class IxnUserDefinedStatistics(IxnStatisticsView):

    def __init__(self, root):
        super().__init__(root, 'User Defined Statistics')


class IxnFlowStatistics(IxnStatisticsView):

    def __init__(self, root):
        super().__init__(root, 'Flow Statistics')

    def read_stats(self):
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

    def __init__(self, root, type):
        self.root = root
        self.root.execute('removeAllTclViews')
        self.root.api.commit()
        statistics = self.root.get_child_static('statistics')
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
        ti_stats = IxnTrafficItemStatistics(self.root)
        dd = ti_stats.ixn_view.get_child_static('drillDown')
        dd.set_attributes(commit=True, targetRowIndex=0)
        dd.get_attribute('availableDrillDownOptions')
        dd.set_attributes(commit=True, targetDrillDownOption=option)
        dd.get_attribute('targetRowIndex')
        dd.get_attribute('targetRow')
        dd.get_attribute('targetDrillDownOption')
        self.root.api.commit()
        dd.execute('doDrillDown', tcl_str(dd.ref))
        time.sleep(10)


view_2_caption = {'Flow Statistics': None,
                  'Port Statistics': 'Port Name',
                  'Traffic Item Statistics': 'Traffic Item',
                  'User Defined Statistics': 'IPv4 :Source Address',
                  }
