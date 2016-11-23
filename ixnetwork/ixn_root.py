"""
@author yoram@ignissoft.com
"""

from trafficgenerator.tgn_tcl import tcl_str, build_obj_ref_list

from ixn_object import IxnObject


class IxnRoot(IxnObject):

    def __init__(self, **data):
        super(IxnRoot, self).__init__(**data)
        self.traffic = self.get_child_static('traffic')

    def regenerate(self, *traffic_items):
        traffic = self.get_child_static('traffic')
        traffic_items = traffic.get_objects_or_children_by_type('trafficItem')
        self.api.execute('generate', tcl_str(build_obj_ref_list(traffic_items)))
