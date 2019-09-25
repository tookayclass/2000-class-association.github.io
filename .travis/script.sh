#!/bin/bash

GITHUB_ACTOR="faph"

git config --global committer.email "deploy@travis-ci.org"
git config --global committer.name "Deployment Bot"
git config --global author.email "${GITHUB_ACTOR}@users.noreply.github.com"
git config --global author.name "${GITHUB_ACTOR}"

git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

credentials=$(echo -n "${GITHUB_ACTOR}:${GITHUB_TOKEN}" | base64)
authheader="Authorization: Basic ${credentials}"
git -c http.extraheader="${authheader}" push origin master:master
