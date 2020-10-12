#!/bin/bash
# 
# Install Flameshot:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://itsfoss.com/take-screenshot-linux/
# Refer: https://mithun.co/software/install-flameshot-on-ubuntu-16-04/

sudo apt-get update
sudo apt install g++ build-essential qt5-default qt5-qmake qttools5-dev-tools
sudo apt install libqt5dbus5 libqt5network5 libqt5core5a libqt5widgets5 libqt5gui5 libqt5svg5-dev
sudo apt install git openssl ca-certificates
git clone https://github.com/lupoDharkael/flameshot.git
cd flameshot
mkdir build
cd build
qmake ../
sudo make
sudo make install