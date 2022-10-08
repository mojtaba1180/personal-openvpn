#!/bin/bash

clear
echo " __   __    _                   _____                                   "     
echo " \ \ / /   | |                 |  _  |                                  "    
echo "  \ V /__ _| | ___   _ ______ _| | | |_ __   ___ _ ____   ___ __  _ __  " 
echo "   \ // _  | |/ / | | |_  / _  | | | | '_ \ / _ \ '_ \ \ / / '_ \| '_ \ "
echo "   | | (_| |   <| |_| |/ / (_| \ \_/ / |_) |  __/ | | \ V /| |_) | | | |"
echo "   \_/\__,_|_|\_\\__,_/___\__,_|\___/| .__/ \___|_| |_|\_/ | .__/|_| |_|"
echo "                                     | |                   | |          "
echo "                                     |_|                   |_|          "

yum update -y
yum install net-tools -y
rpm -i openvpn-as-2.5-CentOS7.x86_64.rpm
rm /usr/local/openvpn_as/lib/python2.7/site-packages/pyovpn-2.0-py2.7.egg
cp pyovpn-2.0-py2.7.egg /usr/local/openvpn_as/lib/python2.7/site-packages/
cd /usr/local/openvpn_as/bin || exit
./ovpn-init


echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn


echo "=========================DONE=============================="
