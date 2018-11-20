#!/usr/bin/env bash
git clone https://github.com/tlorin/potageome
cd potageome
python3 ./potageome.py -c
sed 's,href="css,href="/css,g' potageome.html > potageome_tmp.html
sed 's,src="js,src="/js,g' potageome_tmp.html > potageome.html
cd ..
cp potageome/potageome.html content/apps
cp potageome/js/*.min.js static/js
cp potageome/css/*.min.css static/css
cp potageome/fonts/* static/fonts
rm -rf potageome
