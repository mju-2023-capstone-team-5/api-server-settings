import requests
import os

discord = str(os.environ.get("DISCORD_WEBHOOK"))
headers = {
    'Content-Type': 'application/json'
}

data = '{ "content": "[Github Actions] 배포 완료, 서버 실행 중" }'
data_err = '{ "content": "[Github Actions] 배포에 오류가 있거나 서버가 실행 중이 아님" }'

try:
    response = requests.get("http://localhost:8080/actuator/health")
except Exception as e:
    requests.post(discord, headers=headers, data=data_err.encode('utf-8'))
    exit(1)

requests.post(discord, headers=headers, data=data.encode('utf-8'))

ping = response.json()["components"]["ping"]["status"]
db = response.json()["components"]["db"]["status"]

response_content = "ping: " + ping + ", database: " + db

data_response = '{ "content": \"' + response_content + '\" }'
# response = requests.post(discord, headers=headers, data=data_response)
# ping에 대한 정보는 나중에 하는걸로
