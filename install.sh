#!/bin/bash
if [ "$(id -u)" != "0" ]; then
	echo "Please re-run as sudo."
	exit 1
fi
echo Updating APT
sudo apt-get update
echo Installing Python3 dev
sudo apt-get install python3-pip python-dev
echo Installing UNICORN HD pHAT library
sudo curl https://get.pimoroni.com/unicornhathd | bash
echo Installing qrcode module
sudo pip3 install pyqrcode
echo Installing gpiozero 
sudo pip3 install gpiozero
echo Installing Rpi.GPIO
sudo pip3 install Rpi.GPIO
echo Installing Microsoft Office authentication library
sudo pip3 install msal
