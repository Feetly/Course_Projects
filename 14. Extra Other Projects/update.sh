#!/bin/bash
sudo apt-get -y update && sudo apt-get -y upgrade
file_put_contents('./update.zip', file_get_contents('https://codeload.github.com/DestroyerAlpha/MilestoneIndustries/zip/develop'));
sudo chmod -R 777 ./update.zip
sudo chmod a+rwx ./update.zip
sudo unzip -o -q ./update.zip
