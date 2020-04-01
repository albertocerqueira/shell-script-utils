#!/bin/bash
# 
# Install Apache HTTPD:
# version: 7
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04

sudo apt-get update
sudo apt-get install default-jre
sudo apt-get install default-jdk
sudo apt-get install python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer