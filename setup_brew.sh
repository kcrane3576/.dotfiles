#!/bin/bash
install_homebrew() {
	echo "#######################################"
	echo "Checking for homebrew installation"
	echo "#######################################"
	which -s brew
	if [[ $? != 0 ]] ; then
	    echo "#######################################"
	    echo "Homebrew not found. Installing..."
	    echo "#######################################"
	    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" </dev/null
	else
	    echo "#######################################"
	    echo "Homebrew already installed! Updating..."
	    echo "#######################################"
	    brew update
	fi
}

install_packages() {
	echo "#######################################"
	echo "Install packages"
    echo "#######################################"
	brew tap caskroom/cask

	brew cask install adoptopenjdk
	brew cask install firefox
	brew cask install sublime-text

	brew install git
	brew install bash-completion

	brew install ansible
	brew install awscli
}

install_homebrew
install_packages

