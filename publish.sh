#!/usr/bin/env bash
rm -rf ./public/
hugo
cd ./public/
git init
git add .
git commit -m "Publishing"
git remote add origin git@github.com:ThibaultLatrille/ThibaultLatrille.github.io.git
git push --force --set-upstream origin master
