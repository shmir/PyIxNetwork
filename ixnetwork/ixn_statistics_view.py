"""
@author yoram@ignissoft.com
"""

from collections import OrderedDict

from trafficgenerator.tgn_utils import TgnError
from trafficgenerator.tgn_tcl import is_false, tcl_list_2_py_list

from ixnetwork.ixn_object import IxnObject


class IxnStatisticsView(object):

    row_name = None

    def __init__(self, view):
        root = IxnObject.root
        self.ixn_view = root.get_child_static('statistics').get_child_static('view:"{}"'.format(view))
        self.statistics = OrderedDict()

    def _getStatistics(self):
        page = self.ixn_view.get_child_static('page')
        if is_false(page.get_attribute('isReady')):
            raise TgnError('"{}" not ready'.format(self.obj_type()))
        caption = tcl_list_2_py_list(page.get_attribute('columnCaptions'))
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute('totalPages')) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += tcl_list_2_py_list(page.get_attribute('rowValues'))
        return caption, rows

    def read_stats(self):
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        captions, rows = self._getStatistics()
        first_stat_index = captions.index(self.first_stat)
        captions.pop(first_stat_index)
        self.row_names = captions
        for row in rows:
            row_list = tcl_list_2_py_list(row[1:-1])
            name = row_list.pop(first_stat_index)
            self.statistics[name] = row_list

    def get_row(self, row):
        """
        :param row: requested row (== statistic name)
        :returns: all statistics values for the requested row.
        """
        return self.statistics[row]

    def get_stats(self, counter):
        """
        :param counter: requested statistics (note that some statistics are not counters).
        :returns: all values of the requested counter for all rows.
        """

        return [self.get_stat(r, counter) for r in self.statistics.keys()]

    def get_stat(self, row, counter):
        """
        :param row: requested row (== statistic name)
        :param counter: requested statistics (note that some statistics are not counters).
        :returns: the value of the requested counter for the requested row.
        """

        obj_index = self.row_names.index(counter)
        return self.get_row(row)[obj_index]


class IxnPortStatistics(IxnStatisticsView):

    first_stat = 'Port Name'

    def __init__(self):
        super(self.__class__, self).__init__(view='Port Statistics')


class IxnTrafficItemStatistics(IxnStatisticsView):

    first_stat = 'Tx Frames'

    def __init__(self):
        super(self.__class__, self).__init__(view='Traffic Item Statistics')


class IxnFlowStatistics(IxnStatisticsView):

    first_stat = 'Tx Frames'

    def __init__(self):
        super(self.__class__, self).__init__(view='Flow Statistics')
