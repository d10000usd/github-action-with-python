#!/bin/zsh
# Set your GitHub username and email
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
  #  export GITHUB_EMAIL="d10000usd@gmail.com"
  #  git config --global user.name "${GITHUB_USERNAME}"
  #  git config --global user.email "${GITHUB_EMAIL}"
  #  git config --global credential.helper cache
  #  git config --global credential.helper 'cache --timeout=3600'
  #  echo "MAKE REPO IN GITHUB"
  #  curl -u "${GITHUB_USERNAME}" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
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