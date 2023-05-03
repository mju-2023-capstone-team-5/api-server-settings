import requests
import os
from datetime import datetime

discord = str(os.environ("DISCORD_WEBHOOK"))

headers = {
    'Content-Type': 'application/json'
}

data = '{ "content": "[Github Actions] 배포 중, 빌드 완료, timestamp: ' + str(datetime.now()) + '" }'

requests.post(discord, headers=headers, data=data.encode('utf-8'))
