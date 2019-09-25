#!/bin/bash

GITHUB_ACTOR="faph"

git config committer.email "deploy@travis-ci.org"
git config committer.name "Deployment Bot"
git config author.email "${GITHUB_ACTOR}@users.noreply.github.com"
git config author.name "${GITHUB_ACTOR}"

git checkout master
git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

credentials=$(echo -n "${GITHUB_ACTOR}:${GITHUB_TOKEN}" | base64)
authheader="Authorization: Basic ${credentials}"
git -c http.extraheader="${authheader}" push origin master:master
