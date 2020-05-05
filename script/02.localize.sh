#!/bin/bash

sudo dpkg-reconfigure tzdata
sudo apt -y install task-japanese locales-all fonts-ipafont
sudo localectl set-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
