#!/bin/bash
echo Enter git user name: 
read userName

Echo Enter git user email:
read userEmail

git config --global user.name $userName
git config --global user.email $userEmail

echo "#######################################"
echo "git config"
echo "#######################################"
git config --list
