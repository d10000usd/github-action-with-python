#!/bin/bash
#set your GitHub username and email
# 레포지토리 이름을 설정하는 부분입니다.
# 여기서는 명령어를 실행한 디렉토리 이름을 레포지토리 이름으로 씁니다.
# 만약 규칙을 원하신다면 편의에 맞게 바꾸시면 될 것 같아요.
# vi /usr/local/bin/git-build
# chmod +x /usr/local/bin/git-build
# git build
repo_name=$1
dir_name=`basename $(pwd)`
if [ "$repo_name" = "" ]; then
  repo_name=$dir_name
  fi
  # 깃헙 계정 정보를 넣어주세요.
  export GITHUB_USERNAME="d10000usd"
  export GITHUB_EMAIL="d10000usd@gmail.com"
  git config --global user.name "${GITHUB_USERNAME}"
  git config --global user.email "${GITHUB_EMAIL}"
  git config --global credential.helper cache
  git config --global credential.helper 'cache --timeout=3600'
  echo "MAKE REPO IN GITHUB"
  curl -u "${GITHUB_USERNAME}" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
  echo "[Info] Creating Local Git Repository ...."
  git init
  git add .
  # 디폴트로 'Init'이 커밋 메세지로 들어가게 했어요.
  # 이 부분 또한 편의에 맞게 바꿔 주시면 됩니다!
  git commit -m "Init"
  git branch -M main
  git remote add origin https://github.com/${GITHUB_USERNAME}/$repo_name.git
  echo "[Info] Pushing local repository main branch to Github origin/main branch..."

  git push -u origin main
  git status
  git remote -v
