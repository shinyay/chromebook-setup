#!/bin/bash

FILE=/mnt/chromeos/MyFiles/share/code_1.44.2-1587059832_amd64.deb
if [ -f $FILE ]; then
  sudo apt install -y $FILE
else
  echo "Open https://code.visualstudio.com/"
fi
