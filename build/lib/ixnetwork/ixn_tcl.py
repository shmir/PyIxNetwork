'''
Created on 8 Dec 2013

@author: yoram.shamir
'''

from os import path

from trafficgenerator.tgn_tcl import TgnTclWrapper, get_args_pairs, tcl_file_name, tcl_str


class IxnTcl(TgnTclWrapper):

    pkgIndexTail = 'TclScripts/lib/IxTclNetwork/pkgIndex.tcl'

    ver = None

    def __init__(self, logger, ixn_install_dir, tgnlib_dir, tcl_interp=None):
        super(IxnTcl, self).__init__(logger, tcl_interp)
        self.source(path.join(ixn_install_dir, self.pkgIndexTail))
        self.ver = self.eval('package require IxTclNetwork')
        self.source(path.join(tgnlib_dir, 'ixn_main.tcl'))

    def ixnCommand(self, command, *arguments):
        return self.eval('ixNet ' + command + ' ' + ' '.join(arguments))

    def ixnHighLevelCommand(self, command, *arguments):
        return self.eval('ixTclNet::' + command + ' ' + ' '.join(arguments))

    #
    # IxNetwork built in commands ordered alphabetically.
    #

    def commit(self):
        return self.ixnCommand('commit')

    def connect(self, ip, port):
        return self.ixnCommand('connect ' + ip + ' -port ' + str(port) + ' -version ' + self.ver)

    def execute(self, command, *arguments):
        return self.ixnCommand('exec ' + command, *arguments)

    def getList(self, objRef, childList):
        return self.ixnCommand('getList', objRef, childList)

    def getAttribute(self, objRef, attribute):
        return self.ixnCommand('getAttribute', tcl_str(objRef), '-' + attribute)

    def help(self, objRef):
        return self.ixnCommand('help', objRef)

    def getRoot(self):
        return self.ixnCommand('getRoot')

    def loadConfig(self, configFileName):
        self.execute('loadConfig', self.ixnCommand('readFrom', tcl_file_name(configFileName)))

    def saveConfig(self, configFileName):
        self.execute('saveConfig', self.ixnCommand('writeTo', tcl_file_name(configFileName)))

    def newConfig(self):
        self.execute('newConfig')

    def setAttributes(self, objRef, **attributes):
        self.ixnCommand('setMultiAttribute', objRef, get_args_pairs(attributes))

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

    #
    # IxNetwork Tcl logical and/or re-structured commands.
    #

    def get_all_attributes(self, objRef):
        return self.eval('::IxNetwork::GetAttributesClean {' + objRef + '}')

    def get_all_child_types(self, objRef):
        return self.eval('::IxNetwork::GetChildList {' + objRef + '}')
