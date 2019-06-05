#!/bin/bash
# 
# Install Postman:
# version: Any of the last
# 
# SO: Ubuntu
# version: 14.04 and 16.04
# 
# Refer: https://www.bluematador.com/blog/postman-how-to-install-on-ubuntu-1604

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

# create desktop entry
touch postman.txt
echo "[Desktop Entry]" >> postman.txt
echo "Encoding=UTF-8" >> postman.txt
echo "Name=Postman" >> postman.txt
echo "Exec=postman" >> postman.txt
echo "Icon=/opt/Postman/app/resources/app/assets/icon.png" >> postman.txt
echo "Terminal=false" >> postman.txt
echo "Type=Application" >> postman.txt
echo "Categories=Development;" >> postman.txt
sudo cp postman.txt /usr/share/applications/postman.desktop
sudo mv postman.txt ~/.local/share/applications/postman.desktop