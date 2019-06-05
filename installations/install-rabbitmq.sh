#!/bin/bash
# 
# Install RabbitMQ:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer:
# https://www.rabbitmq.com/install-debian.html
# https://www.rabbitmq.com/plugins.html

sudo apt-get update
sudo apt-get install rabbitmq-server
sudo rabbitmq-plugins enable rabbitmq_management