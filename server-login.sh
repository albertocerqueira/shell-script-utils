#!/bin/bash

echo -e " "
echo -e "choose the server:"
echo -e " "
echo -e "0 - EC-2 Amazon        -> 0"
echo -e "1 - Local Server       -> 1"
echo -e "2 - MNS Amazon         -> 2"
echo -e "3 - QA Developer       -> 3"
echo -e " "

read opt
case $opt in
      0 ) echo -e "wait, we're connecting..."
          ssh -i parh/certificate-key.pem ec2-user@255.255.255.255
          ;;
      1 ) echo -e "wait, we're connecting..."
          ssh user@255.255.255.255
          ;;
      2 ) echo -e "wait, we're connecting..."
          ssh -i parh/certificate-key.pem mms-user@255.255.255.255
          ;;
      3 ) echo -e "wait, we're connecting..."
          ssh developer@255.255.255.255
          ;;
      * ) echo "no option selected, bye!"
esac