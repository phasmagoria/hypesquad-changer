import requests
import json

with open('config.json') as f:
    config = json.load(f)

token = config.get('token')
ua = config.get('ua')

request = requests.Session()

headers = {
    'Authorization': token,
    'Content-Type': 'application/json',
    'User-Agent': ua
}

response = requests.delete('https://discord.com/api/v8/hypesquad/online', headers=headers)
