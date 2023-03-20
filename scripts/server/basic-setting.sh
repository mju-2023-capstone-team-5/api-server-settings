#!/bin/bash

apt-get update
apt-get upgrade -y
# 자바 11 설치 
apt-get install openjdk-11-jdk -y

# 서버 시간대 변경
dpkg-reconfigure tzdata # 6, 69 == Asia/Seoul