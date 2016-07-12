#!/bin/bash

aglio -i ./apiary.apib -o ./build/docs/index.html
git checkout gh-pages
rm -rf ./apiary.apib ./circle.yml ./compile.sh
cp -r ./build/docs/ ./
rm -rf ./build > /dev/null

git add .
git commit -m ":rocket: deploy documentation"
git push origin gh-pages
git checkout master
