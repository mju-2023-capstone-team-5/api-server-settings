#!/bin/bash

# mysql migrate to 5.X to 8.0.32

# mysql apt 설정
## 참고: https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/

mkdir /root/mysql-migration
cd /root/mysql-migration
wget https://dev.mysql.com/get/mysql-apt-config_0.8.24-1_all.deb

# dpkg를 통한 설정
sudo dpkg -i mysql-apt-config_0.8.24-1_all.deb

# apt-get 키 오류 수정
## 참고: https://oopaque.tistory.com/98 https://edu.goorm.io/qna/9831

wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add -

sudo apt-get update -y

# apt-get install을 통한 mysql-server 설치
sudo apt-get install -y mysql-server
