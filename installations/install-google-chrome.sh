#!/bin/bash
# 
# Install Google Chrome:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: http://askubuntu.com/questions/510056/how-to-install-google-chrome

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable