#!/bin/bash
# 
# Install Discord:
# version: Any of the last
# 
# SO: Ubuntu
# version: 11.04, 11.10, 14.04 and 16.04
# 
# Refer: https://linuxconfig.org/how-to-install-discord-on-ubuntu-20-04-focal-fossa-linux

# step 1
sudo apt update
sudo apt install gdebi-core wget

# step 2
wget -O ~/discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"

# step 3
sudo gdebi ~/discord.deb 