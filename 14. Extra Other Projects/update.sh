#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
sudo chmod 777 /var/www/
sudo chmod 777 /var/www/html
file_put_contents('/var/www/html/update.zip', file_get_contents('https://codeload.github.com/DestroyerAlpha/MilestoneIndustries/zip/develop'))
sudo chmod 777 /var/www/html/update.zip
sudo unzip -o -q update.zip
