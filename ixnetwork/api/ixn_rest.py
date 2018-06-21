"""
:author: yoram@ignissoft.com
"""

from os import path
import requests
import ast
import time
import re
import copy

from trafficgenerator.tgn_utils import TgnError


class IxnRestWrapper(object):

    null = 'null'

    def __init__(self, logger):
        """ Init IXN REST package.

        :param looger: application logger, if stream handler and log level is DEBUG -> enable IXN Python debug.
        """

        self.logger = logger

    def waitForComplete(self, response, timeout=90):
        if 'errors' in response.json():
            raise TgnError(response.json()['errors'][0])
        if response.json()['state'].lower() == 'error':
            result = ast.literal_eval(response.content.replace('null', '""'))['result'].strip()
            raise TgnError('wait for post {} failed - {}'.format(response.url, result))
        if response.json()['state'].lower() == 'success':
            return
        for _ in range(timeout):
            response = requests.get(self.root_url)
            if type(response.json()) == dict:
                state = response.json()['state']
            else:
                state = response.json()[0]['state']
            if state.lower() not in ['in_progress', 'down']:
                return
            time.sleep(1)
        raise TgnError('{} operation failed, state is {} after {} seconds'.
                       format(self.session, response.json()['state'], timeout))

    def request(self, command, url, **kwargs):
        kwargs_to_print = copy.deepcopy(kwargs)
        if 'headers' in kwargs and kwargs['headers'].get('content-type', None) == 'application/octet-stream':
            kwargs_to_print['data'] = 'actual octet-stream not logged...'
        self.logger.debug('{} - {} - {}'.format(command.__name__, url, kwargs_to_print))
        response = command(url, **kwargs)
        self.logger.debug('{}'.format(response))
        if response.status_code >= 400:
            text = ast.literal_eval(response.text).get('errors', None) if response.text else None
            raise TgnError('failed to {} {} {} - status code {} - text - {}'.
                           format(command.__name__, url, kwargs, response.status_code, text))
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

    def delete(self, url):
        return self.request(requests.delete, url)

    def connect(self, ip, port):
        self.server_url = 'http://{}:{}'.format(ip, port)
        response = self.post(self.server_url + '/api/v1/sessions')
        self.session = response.json()['links'][0]['href'] + '/'
        self.root_url = self.server_url + self.session
        for _ in range(80):
            try:
                response = self.get(self.server_url + self.session + 'ixnetwork')
                return
            except TgnError as _:
                pass
            time.sleep(1)
        raise TgnError('failed to connect - {}'.
                       format(self.get(self.server_url + self.session + 'ixnetwork').json()['errors']))

    def disconnect(self):
        if self.session.split('/')[-2] != '1':
            self.delete(self.root_url)

    def getRoot(self):
        return self.session + 'ixnetwork'

    def commit(self):
        pass

    def execute(self, command, objRef=None, *arguments):
        data = {}
        if objRef:
            operations_url = '{}/operations/'.format(re.sub('\/[0-9]+', '', objRef.replace(self.session, '')))
        else:
            operations_url = 'ixnetwork/operations/'
        for argument in arguments:
            data['arg' + str(len(data) + 1)] = argument
        response = self.post(self.root_url + operations_url + command, data)
        return response.json()['result']

    def getVersion(self):
        return self.execute('getVersion')

    def newConfig(self):
        self.execute('newConfig')

    def loadConfig(self, config_file_name):
        basename = path.basename(config_file_name)
        with open(config_file_name, mode='rb') as f:
            configContent = f.read()

        urlHeadersData = {'content-type': 'application/octet-stream'}
        uploadUrl = self.root_url + 'ixnetwork/files/' + basename
        response = self.request(requests.post, uploadUrl, data=configContent, headers=urlHeadersData)
        if 'id' in response.json():
            self.waitForComplete(response)

        data = {'arg1': basename}
        self.post(self.root_url + 'ixnetwork/operations/loadConfig', data)

        for _ in range(80):
            try:
                response = self.get(self.server_url + self.session + 'ixnetwork/globals')
                return
            except TgnError as _:
                pass
            time.sleep(1)
        raise TgnError('failed to connect - {}'.
                       format(self.get(self.server_url + self.session + 'ixnetwork/globals').json()['errors']))

        for _ in range(8):
            try:
                response = self.get(self.server_url + self.session + 'ixnetwork/vport')
                return
            except TgnError as _:
                pass
            time.sleep(1)
        raise TgnError('failed to connect - {}'.
                       format(self.get(self.server_url + self.session + 'ixnetwork/vport').json()['errors']))

    def saveConfig(self, config_file_name):
        basename = path.basename(config_file_name)

        data = {'arg1': basename}
        self.post(self.root_url + 'ixnetwork/operations/saveConfig', data)

        urlHeadersData = {'content-type': 'application/octet-stream'}
        uploadUrl = self.root_url + 'ixnetwork/files/' + basename
        r = self.request(requests.get, uploadUrl, headers=urlHeadersData)

        with open(config_file_name, mode='wb') as f:
            f.write(r.content)

    def getList(self, objRef, childList):
        response = self.get(self.server_url + objRef + '/' + childList)
        if type(response.json()) is list:
            return [self._get_href(c) for c in response.json()]
        else:
            return [self._get_href(response.json())]

    def getAttribute(self, objRef, attribute):
        response = self.get(self.server_url + objRef)
        return response.json().get(attribute, '::ixNet::OK')

    def getAttributes(self, objRef):
        return self.get(self.server_url + objRef).json()

    def getListAttribute(self, objRef, attribute):
        value = self.getAttribute(objRef, attribute)
        if type(value) is dict:
            return [v[0] for v in value.values()]
        elif type(value[0]) is list:
            return [v[0] for v in value]
        else:
            return value

    def help(self, objRef):
        response = self.options(self.server_url + objRef)
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

        response = self.post(self.server_url + parent.ref + '/' + obj_type, attributes)
        return self._get_href(response.json())

    def setAttributes(self, objRef, **attributes):
        self.patch(self.server_url + objRef, attributes)

    def remapIds(self, objRef):
        return objRef

    def regenerate(self, traffic, *traffic_items):
        self.execute('generateifrequired', traffic.ref, traffic.ref)

    def startStatelessTraffic(self, traffic, traffic_items):
        self.execute('startstatelesstraffic', traffic.ref, [ti.ref for ti in traffic_items])

    def stopStatelessTraffic(self, traffic, traffic_items):
        self.execute('stopstatelesstraffic', traffic.ref, [ti.ref for ti in traffic_items])

    def _get_href(self, response_entry):
        return response_entry['links'][0]['href']
