#! /bin/bash

wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip
cp -r gtk-master ~/.themes/
gsettings set org.cinnamon.theme name "gtk-master"
gsettings set org.cinnamon.desktop.interface gtk-theme "gtk-master"
gsettings set org.cinnamon.desktop.wm.preferences theme "gtk-master"
rm -rf gtk-master
rm -f master.zip
