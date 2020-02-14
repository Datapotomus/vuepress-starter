#!/bin/bash
# Works with both Git Bash on windows and normal shell for mac and linux.
# It does have to use your ssh key to deploy to a branch. If you don't have your ssh key set up
# follow documentation here: https://git-scm.com/book/en/v2/Git-on-the-Server-Generating-Your-SSH-Public-Key


# abort on errors
set -e

# load .env
eval "$(cat .env <(echo) <(declare -x))"

# build
yarn docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy for github pages'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:$GITHUB_USERNAME/$REPOSITORY.git master:gh-pages

cd -
