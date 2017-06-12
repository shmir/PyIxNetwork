"""
:author: yoram@ignissoft.com
"""

from sys import platform
import requests
import itertools


if platform == 'win32':
    py_tail = 'API/Python/IxNetwork.py'
else:
    py_tail = 'lib/PythonApi/IxNetwork.py'


class IxnRestWrapper(object):

    def __init__(self, logger):
        """ Init IXN REST package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """

        self.logger = logger

    def request(self, command, url):
        pass

    def getVersion(self):
        return self.ixn.getVersion()

    def connect(self, ip, port):
        self.server_url = 'http://{}:{}'.format(ip, port)
        response = requests.post(self.server_url + '/api/v1/sessions')
        session = response.json()['links'][0]['href']
        self.root_url = self.server_url + session + '/ixnetwork'

    def getRoot(self):
        return self.root_url

    def commit(self):
        self.ixn.commit()

    def execute(self, command, *arguments):
        return self.ixn.execute(command, *arguments)

    def newConfig(self):
        self.execute('newConfig')

    def loadConfig(self, configFileName):
        self.execute('loadConfig', self.ixn.readFrom(configFileName.replace('\\', '/')))

    def saveConfig(self, configFileName):
        self.execute('saveConfig', self.ixn.writeTo(configFileName.replace('\\', '/')))

    def getList(self, objRef, childList):
        response = requests.get(objRef + '/' + childList)
        return response.json()['links'][0]['href'].split()

    def getAttribute(self, objRef, attribute):
        response = requests.get(self.server_url + objRef)
        return response.json()[attribute]

    def getListAttribute(self, objRef, attribute):
        value = self.getAttribute(objRef, attribute)
        return [v[0] for v in value] if type(value[0]) is list else value

    def help(self, objRef):
        return self.ixn.help(objRef)

    def add(self, parent, obj_type, **attributes):
        """ IXN API add command

        @param parent: object parent - object will be created under this parent.
        @param object_type: object type.
        @param attributes: additional attributes.
        @return: STC object reference.
        """

        return self.ixn.add(parent.obj_ref(), obj_type, *self._get_args_list(**attributes))

    def setAttributes(self, objRef, **attributes):
        self.ixn.setMultiAttribute(objRef, *self._get_args_list(**attributes))

    def remapIds(self, objRef):
        return self.ixn.remapIds(objRef)[0]

    def _get_args_list(self, **attributes):
        keys = ['-' + attribute for attribute in attributes.keys()]
        return itertools.chain.from_iterable(zip(keys, attributes.values()))
