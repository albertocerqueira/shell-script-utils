#!/bin/bash
# 
# Install Redis:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://tecadmin.net/install-redis-ubuntu/

sudo apt-get update
sudo apt-get install redis-server
sudo systemctl enable redis-server.service
echo 'NOW DO IT:'
echo 'command: sudo vi /etc/redis/redis.conf'
echo 'Update the following values in Redis configuration file according to your requirement. You can increase max memory limit as per available on your server:'
echo 'maxmemory 256mb'
echo 'maxmemory-policy allkeys-lru'
echo 'command: sudo systemctl restart redis-server.service'