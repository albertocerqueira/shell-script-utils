#!/bin/bash
# 
# Install MongoDB:
# version: 3.4
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/
# Refer: https://hevodata.com/blog/install-mongodb-on-ubuntu/

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64 ] http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org