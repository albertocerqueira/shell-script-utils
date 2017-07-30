#!/bin/bash

command_1="cd /home/mms-user/path/;"
command_2="pwd;"

ssh -i /path/certificate-key.pem ec2-user@255.255.255.255 "${command_1}" "${command_2}" 