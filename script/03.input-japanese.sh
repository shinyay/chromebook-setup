#!/bin/bash

sudo apt install -y fcitx-mozc
fcitx-remote -a mozc
echo -e "Environment=\"GTK_IM_MODULE=fcitx\"\nEnvironment=\"QT_IM_MODULE=fcitx\"\nEnvironment=\"XMODIFIERS=@im=fcitx\""  | sudo tee -a /etc/systemd/user/cros-garcon.service.d/cros-garcon-override.conf
echo -e "/usr/bin/fcitx-autostart" >> ~/.sommelierrc
