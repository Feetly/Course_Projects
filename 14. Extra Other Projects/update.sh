#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
file_put_contents('/var/www/html/temp/update.zip', file_get_contents('https://codeload.github.com/DestroyerAlpha/MilestoneIndustries/zip/develop'));
sudo chmod 777 /var/www/html/temp/update.zip
sudo unzip -o -q ./temp/update.zip
