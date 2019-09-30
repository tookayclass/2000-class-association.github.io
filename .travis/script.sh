#!/bin/bash

set -ev

git config core.sshCommand "ssh -i ./.travis/id_rsa.pem"

git checkout master
git commit --allow-empty --verbose --message "Empty commit to trigger new Jekyll build on GitHub"

repo="ssh://git@github.com:${TRAVIS_REPO_SLUG}.git"
repo="git@github.com:2000-class-association/2000-class-association.github.io.git"
git push "${repo}" master:master

