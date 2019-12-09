import requests
import json


server = '192.168.65.34'
# get an API Key
url = 'https://{}/api/v1/auth/session'.format(server)
payload = {'username': 'admin', 'password': 'admin'}
headers = {'content-type': 'application/json'}
response = requests.request('POST', url, data=json.dumps(payload), headers=headers, verify=False)

# create new session

url = 'https://{}/api/v1/sessions'.format(server)

payload = {'applicationType': 'ixnrest'}
headers = {'x-api-key': json.loads(response.text)['apiKey'],
           'content-type': 'application/json'}
response = requests.request('POST', url, json=payload, headers=headers, verify=False)

# get a list of sessions
response = requests.request('GET', url, headers=headers, verify=False)
print(json.dumps(json.loads(response.text), indent=2))
