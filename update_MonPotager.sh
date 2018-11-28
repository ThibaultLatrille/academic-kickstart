#!/usr/bin/env bash
git clone https://github.com/ThibaultLatrille/MonPotager
cd MonPotager
python3 ./MonPotager.py -c
sed 's,href="css,href="/css,g' MonPotager.html > MonPotager_tmp.html
sed 's,src="js,src="/js,g' MonPotager_tmp.html > MonPotager.html
cd ..
cp MonPotager/MonPotager.html content/apps
cp MonPotager/js/*.min.js static/js
cp MonPotager/css/*.min.css static/css
cp MonPotager/fonts/* static/fonts
rm -rf MonPotager
