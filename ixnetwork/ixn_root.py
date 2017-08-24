"""
@author yoram@ignissoft.com
"""

from trafficgenerator.tgn_tcl import tcl_str, build_obj_ref_list

from ixnetwork.ixn_object import IxnObject


class IxnRoot(IxnObject):

    def __init__(self, **data):
        super(IxnRoot, self).__init__(**data)

    def get_ports(self):
        """
        :return: dictionary {name: object} of all vport.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('vport')}

    def get_topologies(self):
        """
        :return: dictionary {name: object} of all topologies.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('topology')}

    def get_traffic_items(self):
        """
        :return: dictionary {name: object} of all traffic items.
        """

        traffic = self.get_child_static('traffic')
        return {o.obj_name(): o for o in traffic.get_objects_or_children_by_type('trafficItem')}

    def get_quick_tests(self, *types):
        """
        :param types: list of requested types, empty list will return all quick tests.
        :return: dictionary {name: object} of requested quick tests.
        """

        quickTest = self.get_child_static('quickTest')
        return {o.obj_name(): o for o in quickTest.get_objects_or_children_by_type(*types) if
                o.obj_name() != '::ixNet::OBJ-/quickTest/globals'}

    def regenerate(self, *traffic_items):
        traffic = self.get_child_static('traffic')
        traffic_items = traffic.get_objects_or_children_by_type('trafficItem')
        self.api.execute('generate', tcl_str(build_obj_ref_list(traffic_items)))
