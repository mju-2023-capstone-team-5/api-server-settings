#!/bin/bash

apt-get update
apt-get upgrade -y
apt-get install openjdk-11-jdk -y

git config --global user.name "terria1020"
git config --global user.email "jaehan1346@gmail.com"

cd ~/
mkdir app
mkdir github

cd ~/github
git clone https://$GIT_ID:$GIT_TOKEN@github.com/mju-2023-capstone-team-5/api-server-settings.git
cd api-server-settings
cp scripts/app/*.sh ~/app/
chmod +x ~/app/*.sh

cd ~/github
git clone https://$GIT_ID:$GIT_TOKEN@github.com/mju-2023-capstone-team-5/api-server.git
git checkout develop
git pull