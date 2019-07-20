#!/bin/bash
# setup mac
cp .bash_profile ~/.bash_profile
source ~/.bash_profile

echo "#######################################"
echo "setup brew"
echo "#######################################"
sh setup_brew.sh


echo "#######################################"
echo "setup git"
echo "#######################################"
sh setup_git.sh

