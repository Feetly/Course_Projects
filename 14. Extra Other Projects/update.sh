#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
sudo chmod 777 /var/www/
sudo chmod 777 /var/www/html
sudo wget -q  https://github.com/DestroyerAlpha/MilestoneIndustries/archive/develop.zip
sudo chmod 777 /var/www/html/*.zip
sudo unzip -o -q *.zip
