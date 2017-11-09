"""
@author yoram@ignissoft.com
"""

from collections import OrderedDict

from trafficgenerator.tgn_utils import is_false, TgnError

from ixnetwork.api.ixn_rest import IxnRestWrapper


class IxnStatisticsView(object):
    """ Base class for all statistics view.

    Note that Flow Statistics are poorly supported in this version as the object name spans over multiple column.
    """

    def __init__(self, root, name):
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
            self.ixn_view = statistics.get_child_static('view:"{}"'.format(name))

    def read_stats(self):
        """ Reads the statistics view from IXN and saves it in statistics dictionary. """

        captions, rows = self._get_pages()
        name_caption_index = captions.index(self.name_caption)
        captions.pop(name_caption_index)
        self.captions = captions
        self.statistics = OrderedDict()
        for row in rows:
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
            raise TgnError('"{}" not ready'.format(self.obj_type()))
        caption = page.get_list_attribute('columnCaptions')
        rows = []
        page.set_attributes(pageSize=50)
        for page_num in range(1, int(page.get_attribute('totalPages')) + 1):
            page.set_attributes(commit=True, currentPage=page_num)
            rows += page.get_list_attribute('rowValues')
        return caption, rows


class IxnPortStatistics(IxnStatisticsView):

    def __init__(self, root):
        super(self.__class__, self).__init__(root, 'Port Statistics')


class IxnTrafficItemStatistics(IxnStatisticsView):

    def __init__(self, root):
        super(self.__class__, self).__init__(root, 'Traffic Item Statistics')


class IxnFlowStatistics(IxnStatisticsView):

    def __init__(self, root):
        super(self.__class__, self).__init__(root, 'Flow Statistics')

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

view_2_caption = {'Flow Statistics': None,
                  'Port Statistics': 'Port Name',
                  'Traffic Item Statistics': 'Traffic Item'
                  }
