#!/bin/bash
# 프로세스 검사
check=$(ps -ef |grep "java -jar /root/github/api-server/build/libs/$SERVER_JAR_NAME" |grep -v "grep" |wc |awk '{print $1}')
# ps -ef: 프로세스 검색
# grep: 문자열 필터 - 문자열 포함하는 행
# grep -v 문자열 필터 - 문자열 제외하는 행
# wc: word count
# awk: 특정 열 출력

if [ $check -gt 0 ] #서버가 실행중이면
then
    echo "kill api server."
    ps -ef |grep "java -jar /root/github/api-server/build/libs/$SERVER_JAR_NAME" |grep -v "grep"|head -n 1 |awk '{print $2}' |xargs -t kill -9
else # 서버가 실행 중이지 않으면
    echo "running api server not found. exit."
fi

# head -n 1: 파일의 처음부터 n번째 줄까지 출력
# xargs: stdout를 다음에 오는 명령어의 stdin으로 입력