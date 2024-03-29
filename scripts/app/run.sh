#!/bin/bash
echo "send it to discord webhook"
python3 /root/app/python/webhook/timestamp.py
echo "execute jar file: $SERVER_JAR_NAME"
nohup java -jar /root/github/api-server/build/libs/$SERVER_JAR_NAME 1> nohup.out 2>&1 &
# Github Actions에서 ssh를 통해 실행되는 nohup는
# stdin, stdout, stderr을 actions output가 가져가서 actions가 끝나지 않기 때문에
# 2>&1을 통해 모든 출력이 nohup로 넘어가게 설정
echo "execute status_webhook.sh for test status. bye."
/bin/bash /root/app/status_webhook.sh