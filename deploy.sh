#!/usr/bin/env sh

# abort on error
set -e

npm run build

cd dist

git init
git add -A
git commint -m 'deploy'
git push -f git@github.com:BazioDEV/BazioDEV.github.io.git main

cd -
