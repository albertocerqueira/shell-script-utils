#!/bin/bash
# 
# Install Maven:
# version: 3.3.3
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: 
# https://npatta01.github.io/2015/08/05/maven_install/
# https://maven.apache.org/
# 
# Note:
# If the "wget" command does not work, download it manually: https://maven.apache.org/download.cgi

sudo apt-get purge -y maven
wget http://ftp.unicamp.br/pub/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -zxf apache-maven-3.3.9-bin.tar.gz
sudo cp -R apache-maven-3.3.9 /usr/local
sudo ln -s /usr/local/apache-maven-3.3.9/bin/mvn /usr/bin/mvn
echo "export M2_HOME=/usr/local/apache-maven-3.3.9" >> ~/.profile
source ~/.profile
echo "Maven is on version [mvn -v]"