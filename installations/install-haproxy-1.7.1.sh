#!/bin/bash
# 
# Install HAProxy:
# version: 1.7.1
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: 
# https://en.wikipedia.org/wiki/HAProxy
# https://haproxy.debian.net/#?distribution=Ubuntu&release=trusty&version=1.7

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:vbernat/haproxy-1.7
sudo apt-get update
sudo apt-get install haproxy