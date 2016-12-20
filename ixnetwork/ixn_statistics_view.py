"""
@author yoram@ignissoft.com
"""

from collections import OrderedDict

from trafficgenerator.tgn_utils import is_false, TgnError

from ixnetwork.ixn_object import IxnObject


class IxnStatisticsView(object):
    """ Base class for all statistics view.

    Note that Flow Statistics are poorly supported in this version as the object name spans over multiple column.
    """

    def __init__(self, view, name_caption):
        root = IxnObject.root
        self.name_caption = name_caption
        self.ixn_view = root.get_child_static('statistics').get_child_static('view:"{}"'.format(view))

    def _getStatistics(self):
        page = self.ixn_view.get_child_static('page')
        if is_false(page.get_attribute('isReady')):
            raise TgnError('"{}" not ready'.format(self.obj_type()))
        caption = page.get_list_attribute('columnCaptions')
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute('totalPages')) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += page.get_list_attribute('rowValues')
        return caption, rows

    def read_stats(self):
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        captions, rows = self._getStatistics()
        name_caption_index = captions.index(self.name_caption)
        captions.pop(name_caption_index)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
            name = row.pop(name_caption_index)
            self.statistics[name] = row

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


class IxnPortStatistics(IxnStatisticsView):

    def __init__(self):
        super(self.__class__, self).__init__(view='Port Statistics', name_caption='Port Name')


class IxnTrafficItemStatistics(IxnStatisticsView):

    def __init__(self):
        super(self.__class__, self).__init__(view='Traffic Item Statistics', name_caption='Traffic Item')
