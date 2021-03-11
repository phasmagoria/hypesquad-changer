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
payload = {'house_id': 1}

response = request.post('https://discordapp.com/api/v8/hypesquad/online', headers=headers, json=payload, timeout=10)
