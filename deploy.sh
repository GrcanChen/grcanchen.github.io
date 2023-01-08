#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run www:build

# navigate into the build output directory
cd www/.vuepress/dist

# if you are deploying to a custom domain
echo 'www.rmstudio.top' > CNAME

git init
git add -A
git commit -m 'deploy'

cd -