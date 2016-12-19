"""
@author yoram@ignissoft.com
"""

from os import path

from trafficgenerator.tgn_tcl import TgnTclWrapper, get_args_pairs, tcl_file_name, tcl_str, tcl_list_2_py_list


class IxnTclWrapper(TgnTclWrapper):

    pkgIndexTail = 'TclScripts/lib/IxTclNetwork/pkgIndex.tcl'

    ver = None

    def __init__(self, logger, ixn_install_dir, tgnlib_dir, tcl_interp=None):
        super(IxnTclWrapper, self).__init__(logger, tcl_interp)
        self.source(path.join(ixn_install_dir, self.pkgIndexTail))
        self.ver = self.eval('package require IxTclNetwork')

    def ixnCommand(self, command, *arguments):
        return self.eval('ixNet ' + command + ' ' + ' '.join(arguments))

    #
    # IxNetwork built in commands ordered alphabetically.
    #

    def commit(self):
        return self.ixnCommand('commit')

    def connect(self, ip, port):
        return self.ixnCommand('connect ' + ip + ' -port ' + str(port) + ' -version ' + self.getVersion())

    def execute(self, command, *arguments):
        return self.ixnCommand('exec ' + command, *arguments)

    def getList(self, objRef, childList):
        children_list = self.ixnCommand('getList', objRef, childList)
        return tcl_list_2_py_list(children_list)

    def getAttribute(self, objRef, attribute):
        """ Get current value of the requested attribute. """
        return self.ixnCommand('getAttribute', tcl_str(objRef), '-' + attribute)

    def getListAttribute(self, objRef, attribute):
        value = tcl_list_2_py_list(self.getAttribute(objRef, attribute))
        # Is there better way to determine that we have list of lists?
        return value if value[0][0] != '{' else [tcl_list_2_py_list(v[1:-1]) for v in value]

    def help(self, objRef):
        return self.ixnCommand('help', objRef)

    def getRoot(self):
        return self.ixnCommand('getRoot')

    def getVersion(self):
        return self.ixnCommand('getVersion')

    def loadConfig(self, configFileName):
        self.execute('loadConfig', self.ixnCommand('readFrom', tcl_file_name(configFileName)))

    def saveConfig(self, configFileName):
        self.execute('saveConfig', self.ixnCommand('writeTo', tcl_file_name(configFileName)))

    def newConfig(self):
        self.execute('newConfig')

    def setAttributes(self, objRef, **attributes):
        self.ixnCommand('setMultiAttribute', tcl_str(objRef), get_args_pairs(attributes))

    def add(self, parent, obj_type, **attributes):
        """ IXN API add command

        @param parent: object parent - object will be created under this parent.
        @param object_type: object type.
        @param attributes: additional attributes.
        @return: STC object reference.
        """
        return self.ixnCommand('add', parent.obj_ref(), obj_type, get_args_pairs(attributes))

    def remove(self, objRef):
        """ IXN API remove command

        @param objRef: object reference to remove.
        """
        self.ixnCommand('remove', objRef)

    def remapIds(self, objRef):
        return self.eval('lindex [ixNet remapIds ' + objRef + '] 0')
