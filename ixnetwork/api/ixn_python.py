"""
:author: yoram@ignissoft.com
"""

import logging
import itertools
import posixpath
import imp


class IxnPythonWrapper(object):

    def __init__(self, logger, ixn_install_dir):
        """ Init IXN Python package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        :param ixn_install_dir: full path to IXN installation directory up to (including) version number.
        :todo: Add logger to log IXN Python package commands only to create a clean Python script for debug.
        """

        super(self.__class__, self).__init__()
        ixn_python_module = posixpath.sep.join([ixn_install_dir, 'API/Python/IxNetwork.py'])
        self.ixn = imp.load_source('IxNet', ixn_python_module).IxNet()
        stream_handler = None
        for handler in logger.handlers:
            if isinstance(handler, logging.StreamHandler):
                stream_handler = handler
        if stream_handler and logger.getEffectiveLevel() == 10:
            self.ixn.setDebug(True)

    def getVersion(self):
        return self.ixn.getVersion()

    def connect(self, ip, port):
        return self.ixn.connect(ip, '-port', port, '-version', self.getVersion())

    def getRoot(self):
        return self.ixn.getRoot()

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
        return self.ixn.getList(objRef, childList)

    def getAttribute(self, objRef, attribute):
        return self.ixn.getAttribute(objRef, '-' + attribute)

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
