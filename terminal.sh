#! /bin/bash

apt install git dconf-cli -y
git clone https://github.com/dracula/gnome-terminal
cd gnome-terminal
(echo 1; echo 1; echo yes; echo 1) | ./install.sh
cd ..
rm -rf gnome-terminal
