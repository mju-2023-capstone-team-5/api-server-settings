#!/bin/bash
cd /root/github/api-server

git remote remove origin
git remote add origin https://$GIT_ID:$GIT_TOKEN@github.com/mju-2023-capstone-team-5/api-server.git
# Github Actions에서 private repo의 pull을 아이디 비밀번호 입력 없이 사용하기 위해 remote에 명시