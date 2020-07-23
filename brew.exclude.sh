#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Core Utils
brew install coreutils

# ---------------------------------------------
# Programming Languages and Frameworks
# ---------------------------------------------

# NodeJS 
brew install node

# Python 3
brew install python

# ---------------------------------------------
# Development tools
# ---------------------------------------------

# Visual Studio Code (favorite editor)
brew cask install visual-studio-code

# Sublime Text (second favorite editor)
brew cask install sublime-text

# Docker for containerization
brew install docker

# ---------------------------------------------
# Useful tools
# ---------------------------------------------

brew install ssh-copy-id

# Show directory structure with excellent formatting
# brew install tree

# aText
brew cask install atext

# Alfred
brew cask install alfred

# ---------------------------------------------
# Web tools
# ---------------------------------------------

# Postman
brew cask install postman

# Browsers
brew cask install google-chrome
brew cask install firefox

# ---------------------------------------------
# Other work tools
# ---------------------------------------------

# Communication tools
brew cask install slack
brew cask install skype

# Toggl Desktop for time tracking
brew cask install toggl

# Draw.io (https://www.draw.io/)
brew cask install drawio

# ---------------------------------------------
# Entertainment
# ---------------------------------------------

brew cask install spotify
brew cask install vlc

# ---------------------------------------------
# Misc
# ---------------------------------------------

# Flux for saving myself from that blue light
brew cask install flux

# Spectacle for moving windows around (development discontinued though) 
brew cask install spectacle

# Remove outdated versions from the cellar
brew cleanup