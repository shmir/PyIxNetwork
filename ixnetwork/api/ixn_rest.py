"""
:author: yoram@ignissoft.com
"""

from sys import platform
import requests
import itertools
import time

from trafficgenerator.tgn_utils import TgnError

if platform == 'win32':
    py_tail = 'API/Python/IxNetwork.py'
else:
    py_tail = 'lib/PythonApi/IxNetwork.py'


def waitForComplete(response, sessionUrl, timeout=90):
    # response: Provide the POST action response.  Generally, after an /operations action.
    #           Such as /operations/startallprotocols, /operations/assignports
    # sessionUrl: http://10.219.x.x:11009/api/v1/sessions/1/ixnetwork
    #
    # Returns 0 if the state is good
    # Returns 1 if the  state remains down or IN_PROGRESS after timeout.

    if 'errors' in response.json():
        raise TgnError(response.json()['errors'][0])
    if response.json()['state'] == 'SUCCESS':
        return
    for _ in range(timeout):
        response = requests.get(sessionUrl)
        if response.json()[0]['state'] not in ['IN_PROGRESS', 'down']:
            return
        time.sleep(1)
    raise TgnError('{} operation failed, state is {} after {} seconds'.format(sessionUrl, response.json()['state'],
                                                                              timeout))


class IxnRestWrapper(object):

    def __init__(self, logger):
        """ Init IXN REST package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """

        self.logger = logger

    def request(self, command, url, **kwargs):
        self.logger.debug('{} - {}'.format(command.__name__, url))
        response = command(url, **kwargs)
        self.logger.debug('{}'.format(response))
        self.logger.debug('{}'.format(response.json()))
        return response

    def get(self, url):
        return self.request(requests.get, url)

    def post(self, url, data=None):
        response = self.request(requests.post, url, json=data)
        if 'id' in response.json():
            waitForComplete(response, url + response.json()['id'])
        return response

    def getVersion(self):
        return self.ixn.getVersion()

    def connect(self, ip, port):
        self.server_url = 'http://{}:{}'.format(ip, port)
        response = self.post(self.server_url + '/api/v1/sessions')
        session = response.json()['links'][0]['href']
        self.root_url = self.server_url + session + '/ixnetwork'

    def getRoot(self):
        return self.root_url

    def commit(self):
        pass

    def execute(self, command, *arguments):
        oper_url = self.root_url + '/operations/' + command
        response = self.post(oper_url)
        waitForComplete(response, self.root_url + oper_url+response.json()["id"])

    def newConfig(self):
        self.execute('newConfig')

    def loadConfig(self, configFileName):
        data = {'filename': configFileName}
        self.post(self.root_url + '/operations/loadConfig', data)

    def saveConfig(self, configFileName):
        self.execute('saveConfig', self.ixn.writeTo(configFileName.replace('\\', '/')))

    def getList(self, objRef, childList):
        response = self.get(objRef + '/' + childList)
        return [c['links'][0]['href'] for c in response.json()]

    def getAttribute(self, objRef, attribute):
        response = self.get(self.server_url + objRef)
        return response.json().get(attribute, '::ixNet::OK')

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
