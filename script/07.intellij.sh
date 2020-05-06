#!/bin/bash

FILE=/mnt/chromeos/MyFiles/share/ideaIU-2020.1.1.tar.gz
if [ -f $FILE ]; then
  tar zxvf $FILE
  sudo mv idea-IU* /opt/intellij
  /opt/intellij/bin/idea.sh
else
  echo "Open https://www.jetbrains.com/idea/download/#section=linux"
fi
