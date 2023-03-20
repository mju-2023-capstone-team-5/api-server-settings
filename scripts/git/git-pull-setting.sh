#!/bin/bash

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

#cd /root/github/api-server


#git remote remove origin
#git remote add origin https://$GIT_ID:$GIT_TOKEN@github.com/mju-2023-capstone-team-5/api-server.git
# Github Actions에서 private repo의 pull을 아이디 비밀번호 입력 없이 사용하기 위해 remote에 명시
## -> clone부터 id:token 형식으로 clone하면 remote에 알아서 붙음