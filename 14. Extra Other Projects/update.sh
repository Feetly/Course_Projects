#!/bin/bash
cd /var/www/
sudo rm -r html
sudo wget -q  https://github.com/DestroyerAlpha/MilestoneIndustries/archive/develop.zip
sudo  unzip -o -q *.zip && sudo rm -f *.zip
sudo mv -f MilestoneIndustries-develop/ html/
