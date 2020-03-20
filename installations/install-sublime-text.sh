#!/bin/bash
# 
# Install Sublime Text:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://easycloudsupport.zendesk.com/hc/en-us/articles/360006586972-Install-Sublime-Text-3-in-Ubuntu-16-04-Higher-The-Official-Way

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text