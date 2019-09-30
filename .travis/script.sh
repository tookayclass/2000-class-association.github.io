#!/bin/bash

set -e
source ./.travis/ssh.sh

add_key $SSH_PRIVATE_KEY

git checkout master
git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

repo="ssh://git@github.com:${TRAVIS_REPO_SLUG}.git"
git push $repo master:master
