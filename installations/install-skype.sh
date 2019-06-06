#!/bin/bash
# 
# Install Skype:
# version: Any of the last
# 
# SO: Ubuntu
# version: 16.04
# 
# Refer: https://www.linuxbabe.com/desktop-linux/install-skype-ubuntu-16-04

echo "deb [arch=amd64] https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skype-stable.list
wget https://repo.skype.com/data/SKYPE-GPG-KEY 
sudo apt-key add SKYPE-GPG-KEY
sudo apt install apt-transport-https
sudo apt update
sudo apt install skypeforlinux