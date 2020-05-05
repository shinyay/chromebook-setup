#!/bin/bash

sudo dpkg-reconfigure tzdata
sudo apt -y install task-japanese locales-all fonts-ipafont fonts-noto-cjk 
sudo apt install -y fontconfig
curl -OL https://github.com/adobe-fonts/source-han-code-jp/archive/2.011R.tar.gz
tar zxf 2.011R.tar.gz
sudo cp ./source-han-code-jp-2.011R/OTF/* /usr/local/share/fonts
sudo fc-cache -fv
rm 2.011R.tar.gz
rm -fr source-han-code-jp-2.011R
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
