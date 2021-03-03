import requests
import json

with open('config.json') as f:
    config = json.load(f)

token = config.get('token')

request = requests.Session()

headers = {
      'Authorization': token,
      'Content-Type': 'application/json',
      'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) discord/0.0.305 Chrome/69.0.3497.128 Electron/4.0.8 Safari/537.36'
    }    
payload = {'house_id': 1}

response = request.post('https://discordapp.com/api/v8/hypesquad/online', headers=headers, json=payload, timeout=10)
