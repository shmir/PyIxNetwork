"""
@author yoram@ignissoft.com
"""

from collections import OrderedDict

from ixn_object import IxnObject


class IxnStatisticsView(object):

    row_name = None

    def __init__(self, view):
        super(IxnStatisticsView, self).__init__()
        self.api = IxnObject.api
        self.view = view
        self.statistics = OrderedDict()

    def getStatistics(self):
        return self.api.eval(
            '::IxNetwork::GetStatistics {' + self.getName() + '}')

    def read_stats(self):
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        stat_out = self.api.eval('::IxNetwork::GetStatistics {' + self.view + '}')
        captions_line = stat_out.strip().split('\n')[0].strip()
        first_stat_index = captions_line.split('\t').index(self.first_stat)
        self.row_names = tuple(captions_line.split('\t')[:first_stat_index])
        for line in stat_out.strip().split('\n'):
            name = tuple(line.strip().split('\t')[:first_stat_index])
            self.statistics[name] = line.strip().split('\t')[1:]

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

        return [self.get_stat(r, counter) for r in self.statistics.keys()[1:]]

    def get_stat(self, row, counter):
        """
        :param row: requested row (== statistic name)
        :param counter: requested statistics (note that some statistics are not counters).
        :returns: the value of the requested counter for the requested row.
        """

        obj_index = self.statistics[self.row_names].index(counter)
        return self.statistics[tuple(row)][obj_index]


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
