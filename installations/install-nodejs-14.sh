#!/bin/bash
# 
# Install NodeJS:
# version: 14.x
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://tecadmin.net/install-latest-nodejs-npm-on-ubuntu/

sudo apt-get install curl
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

sudo apt-get update
sudo apt-get install nodejs

echo 'talvez você precise executar o comando [sudo apt install nodejs-legacy].'