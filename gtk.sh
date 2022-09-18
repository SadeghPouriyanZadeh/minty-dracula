#! /bin/bash


if ![[""$XDG_CURRENT_DESKTOP"" == X-Cinnamon]]; then
    echo "Your desktop is not X-Cinnamon."
    exit
wget https://github.com/dracula/gtk/archive/master.zip
unzip master.zip
mkdir ~/.themes/
cp -r gtk-master ~/.themes/
gsettings set org.cinnamon.theme name "gtk-master"
gsettings set org.cinnamon.desktop.interface gtk-theme "gtk-master"
gsettings set org.cinnamon.desktop.wm.preferences theme "gtk-master"
rm -rf gtk-master
rm -f master.zip
