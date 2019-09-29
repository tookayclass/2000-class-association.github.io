#!/bin/bash

source ./.travis/ssh.sh

git checkout master
git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

credentials=$(echo -n "travis:${GITHUB_TOKEN}" | base64)
authheader="Authorization: Basic ${credentials}"
git -c http.extraheader="${authheader}" push origin master:master
