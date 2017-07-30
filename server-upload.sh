#!/bin/bash

echo -e " "
echo -e "choose the server:"
echo -e " "

Upload the file to the server server.

echo -e "0 - upload the [file.nar]   to the server [EC-2 Amazon]  -> 0"
echo -e "1 - Upload the [webapp/*]   to the server [MNS Amazon]   -> 1"
echo -e "2 - Upload the [webapp.zip] to the server [QA Developer] -> 2"
echo -e " "

read opt
case $opt in
	0 ) echo -e "uploading, please wait..."
		sudo scp -i /path/certificate-key.pem /path/file.nar ec2-user@255.255.255.255:/home/ec2-user/path/
		;;
	1 ) echo -e "uploading, please wait..."
		sudo scp -rp -i /path/certificate-key.pem /path/webapp/* mns-user@255.255.255.255:/home/mns-user/path/
		;;
	2 ) echo -e "uploading, please wait..."
		cd /path/
		zip -r /path/webapp.zip webapp
		if sudo scp /path/webapp.zip developer@255.255.255.255:/path/; then
			rm /path/webapp.zip
		else 
			echo "failed to upload .zip!"
		fi
		;;
	* ) echo "no option selected, bye!"
esac