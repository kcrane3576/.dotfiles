#!/bin/bash
echo "#######################################"
echo "setup mac"
echo "#######################################"
cp .bash_profile ~/.bash_profile
sh setup_mac.sh
source ~/.bash_profile

echo "#######################################"
echo "setup brew"
echo "#######################################"
sh setup_brew.sh


echo "#######################################"
echo "setup git"
echo "#######################################"
sh setup_git.sh