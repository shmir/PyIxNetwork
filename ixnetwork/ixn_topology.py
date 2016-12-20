"""
@author yoram@ignissoft.com
"""

import os
import time

from trafficgenerator.tgn_utils import TgnError

from ixn_object import IxnObject


class IxnTopologyBaseClass(IxnObject):

    action_2_status = {'start': 'started',
                       'stop': 'notStarted'}

    def get_device_groups(self):
        """
        :return: dictionary {name: object} of all device groups.
        """

        return {o.obj_name(): o for o in self.get_objects_or_children_by_type('deviceGroup')}

    def action(self, action, timeout=64, *arguments):
        self.api.execute(action, self.obj_ref(), *arguments)
        now = time.time()
        while self.get_attribute('status') != self.action_2_status[action] and time.time() - now <= timeout:
            time.sleep(1)
        if time.time() - now > timeout:
            raise TgnError('Failed to {} protocols after {} seconds'.format(action, time.time() - now))

    def start(self):
        """ Start the protocol.

        The function will return after the protocol is started.
        """
        self.action('start')

    def stop(self):
        """ Stop the protocol.

        The function will return after the protocol is stopped.
        """
        self.action('stop')


class IxnTopology(IxnTopologyBaseClass):
    """ Represents IXN topology.

    Currently supports topology under single port only.
    """

    def __init__(self, **data):
        data['objType'] = 'topology'
        data['parent'] = self.root
        super(self.__class__, self).__init__(**data)


class IxnMultivalueBase(IxnTopologyBaseClass):
    """ Represents IXN device group. """


class IxnDeviceGroup(IxnTopologyBaseClass):
    """ Represents IXN device group. """

    def __init__(self, **data):
        data['objType'] = 'deviceGroup'
        super(IxnDeviceGroup, self).__init__(**data)


class IxnNextGenProtocol(IxnTopologyBaseClass):
    """ Represents IXN device group. """

    def __init__(self, **data):
        data['objType'] = self.protocol
        super(IxnNextGenProtocol, self).__init__(**data)

    def getProtocolItems(self):
        items = {}
        for item in self.getChildren('item'):
            name = self.getName() + ' ' + os.path.basename(item).split(':')[1]
            objectDict = {'-name': name,
                          '-objRef': item,
                          '-type': 'ProtocolNgpfItem',
                          '-subType': self.getSubType()}
            items[name] = IxnNextGenProtocolItem(self.api, objectDict)
        return items


class IxnNgpfEthernet(IxnNextGenProtocol):
    protocol = 'ethernet'


class IxnNgpfIpv4(IxnNextGenProtocol):
    protocol = 'ipv4'


class IxnNextGenProtocolItem(IxnTopologyBaseClass):

    pass
