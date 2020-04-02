#!/bin/bash
# 
# Install Robomongo:
# version: 0.9.0
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://stackoverflow.com

# pull down and install Robomongo by copying files
wget https://download.robomongo.org/0.9.0/linux/robomongo-0.9.0-linux-x86_64-0786489.tar.gz
tar xf robomongo-0.9.0-linux-x86_64-0786489.tar.gz
sudo mv ./robomongo-0.9.0-linux-x86_64-0786489 /opt/robomongo
cd /usr/sbin
sudo ln -s /opt/robomongo/bin/robomongo

# grab image to use for icon
cd /opt/robomongo
wget http://mongodb-tools.com/img/robomongo.png

# create desktop entry
touch robomongo.txt
echo "[Desktop Entry]" >> robomongo.txt
echo "Encoding=UTF-8" >> robomongo.txt
echo "Name=Robomongo" >> robomongo.txt
echo "Comment=Launch Robomongo" >> robomongo.txt
echo "Icon=/opt/robomongo/robomongo.png" >> robomongo.txt
echo "Exec=/usr/sbin/robomongo" >> robomongo.txt
echo "Terminal=false" >> robomongo.txt
echo "Type=Application" >> robomongo.txt
echo "Categories=Developer;" >> robomongo.txt
echo "StartupNotify=true" >> robomongo.txt
sudo cp robomongo.txt /usr/share/applications/robomongo.desktop
sudo mv robomongo.txt ~/.local/share/applications/robomongo.desktop