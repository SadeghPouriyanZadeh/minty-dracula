#! /bin/bash

wget https://github.com/EliverLara/candy-icons/archive/refs/heads/master.zip
unzip master.zip
cp -r candy-icons-master ~/.icons/
gsettings set org.cinnamon.desktop.interface icon-theme "candy-icons-master"
rm -rf candy-icons-master
rm -f master.zip
