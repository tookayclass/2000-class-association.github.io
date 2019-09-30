#!/bin/bash

set -ev

git config core.sshCommand "ssh -i ./.travis/id_rsa.pem"

git checkout master
git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

repo="git@github.com:${TRAVIS_REPO_SLUG}.git"
git push "${repo}" master:master
