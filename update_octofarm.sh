#!/bin/bash
today=$(date +"%d-%m-%y")
echo -e "\e[42m===>Creating Backup Directory\e[0m" 
mkdir -v Octofarm_Backup_$today
echo -e "\e[42m===>Copy Files To Backup Directory\e[0m"
cp -r -v OctoFarm/* Octofarm_Backup_$today
echo -e "\e[42m===>Deleting Old Stuff\e[0m"
rm -rf -v OctoFarm/
echo -e "\e[42m===>Cloning New Version\e[0m"
git clone https://github.com/NotExpectedYet/OctoFarm.git
echo -e "\e[42m===>Restore db.js From Backup Directory\e[0m"
cp -v /home/Octofarm_Backup_$today/config/db.js /home/OctoFarm/config/db.js
echo -e "\e[42m===>DONE! Open Your Browser And Navigate To Your OctoFarm-IP!\e[0m"
