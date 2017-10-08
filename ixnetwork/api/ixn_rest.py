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


class IxnRestWrapper(object):

    def __init__(self, logger):
        """ Init IXN REST package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """

        self.logger = logger

    def waitForComplete(self, response, timeout=90):
        if 'errors' in response.json():
            raise TgnError(response.json()['errors'][0])
        if response.json()['state'] == 'SUCCESS':
            return
        for _ in range(timeout):
            response = requests.get(self.session_url)
            if response.json()[0]['state'] not in ['IN_PROGRESS', 'down']:
                return
            time.sleep(1)
        raise TgnError('{} operation failed, state is {} after {} seconds'.format(self.session,
                                                                                  response.json()['state'], timeout))

    def request(self, command, url, **kwargs):
        self.logger.debug('{} - {} - {}'.format(command.__name__, url, kwargs))
        response = command(url, **kwargs)
        self.logger.debug('{}'.format(response))
        return response

    def get(self, url):
        return self.request(requests.get, url)

    def post(self, url, data=None):
        response = self.request(requests.post, url, json=data)
        if 'id' in response.json():
            self.waitForComplete(response)
        return response

    def options(self, url):
        return self.request(requests.options, url)

    def patch(self, url, data=None):
        response = self.request(requests.patch, url, json=data)
        if response.status_code != 200:
            raise TgnError('object {} failed to set attributes {}'.format(url, data))

    def connect(self, ip, port):
        self.server_url = 'http://{}:{}'.format(ip, port)
        response = self.post(self.server_url + '/api/v1/sessions')
        self.session = response.json()['links'][0]['href'] + '/'
        self.root_url = self.server_url + self.session

    def getRoot(self):
        return 'ixnetwork'

    def commit(self):
        pass

    def execute(self, command, *arguments):
        oper_url = self.root_url + 'ixnetwork/operations/' + command
        return self.post(oper_url)

    def getVersion(self):
        return self.execute('getVersion')

    def newConfig(self):
        self.execute('newConfig')

    def loadConfig(self, configFileName):
        data = {'filename': configFileName}
        self.post(self.root_url + 'ixnetwork/operations/loadConfig', data)

    def saveConfig(self, configFileName):
        data = {'filename': configFileName}
        self.post(self.root_url + 'ixnetwork/operations/saveConfig', data)

    def getList(self, objRef, childList):
        response = self.get(self.root_url + objRef + '/' + childList)
        if type(response.json()) is list:
            return [self._get_href(c) for c in response.json()]
        else:
            return [self._get_href(response.json())]

    def getAttribute(self, objRef, attribute):
        response = self.get(self.root_url + objRef)
        return response.json().get(attribute, '::ixNet::OK')

    def getListAttribute(self, objRef, attribute):
        value = self.getAttribute(objRef, attribute)
        return [v[0] for v in value] if type(value[0]) is list else value

    def help(self, objRef):
        response = self.options(self.root_url + objRef)
        children = response.json()['custom']['children']
        children_list = [c['name'] for c in children]
        attributes = response.json()['custom']['attributes']
        attributes_list = [a['name'] for a in attributes]
        operations = response.json()['custom']['operations']
        operations_list = [o['operation'] for o in operations]
        return children_list, attributes_list, operations_list

    def add(self, parent, obj_type, **attributes):
        """ IXN API add command

        @param parent: object parent - object will be created under this parent.
        @param object_type: object type.
        @param attributes: additional attributes.
        @return: STC object reference.
        """

        response = self.post(self.root_url + parent.ref + '/' + obj_type, attributes)
        return self._get_href(response.json())

    def setAttributes(self, objRef, **attributes):
        self.patch(self.root_url + objRef, attributes)

    def remapIds(self, objRef):
        return objRef

    def _get_href(self, response_entry):
        return response_entry['links'][0]['href'].replace(self.session, '')
