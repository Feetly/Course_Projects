#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
chmod 777 /var/www/
chmod 777 /var/www/html
sudo wget -q  https://github.com/DestroyerAlpha/MilestoneIndustries/archive/develop.zip
chmod 777 /var/www/html/*.zip
sudo unzip -o -q *.zip
