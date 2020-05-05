#!/bin/bash

sudo echo "deb http://ftp.jp.debian.org/debian stretch main contrib non-free" >> /etc/apt/sources.list
sudo echo "deb http://ftp.jp.debian.org/debian stretch-updates main contrib non-free" >> /etc/apt/sources.list
sudo apt -y update
sudo apt -y upgrade
