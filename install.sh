#!/bin/bash

sudo ls /usr/share/plymouth/themes/transistor &> /dev/null || sudo mkdir -p /usr/share/plymouth/themes/transistor
echo -n "[..] copying theme..."
sudo ln -s $(pwd)/Resources/* /usr/share/plymouth/themes/transistor  
echo -e "\e[0K\r[OK] copying theme..DONE! "

echo -n "[..] registering theme..."
sudo update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/transistor/transistor.plymouth 100 >> /dev/null

echo -e "\e[0k\r[OK] registering theme...DONE! "
echo -n "[..] configuring plymouth..."
sudo update-alternatives --config default.plymouth >> /dev/null

echo -e "\e[0K\r[OK] configuring plymouth...DONE! "
#sudo update-initramfs -u
echo -n "[..] selecting theme..."
sudo plymouth-set-default-theme -R transistor >> /dev/null
echo -e "\e[0k\r[OK] selecting theme...DONE! "
echo DONE!
