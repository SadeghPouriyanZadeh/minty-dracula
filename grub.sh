#! /bin/bash

apt install git
git clone https://github.com/dracula/grub.git
cd grub
cp -r dracula/ /boot/grub/themes/dracula/
sudo chmod 644 /etc/default/grub
echo -e '\nGRUB_THEME=/boot/grub/themes/dracula/theme.txt' >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
cd ..
rm -rf grub
