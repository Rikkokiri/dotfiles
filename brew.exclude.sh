# Install command-line tools using Homebrew.

# Install homebrew if it is not installed
which brew 1>&/dev/null
if [ ! "$?" -eq 0 ] ; then
	echo "Homebrew not installed. Attempting to install Homebrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	if [ ! "$?" -eq 0 ] ; then
		echo "Something went wrong. Exiting..." && exit 1
	fi
fi

# TODO: Fix this line not working
export PATH="/opt/homebrew/bin:$PATH"

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
brew install --cask visual-studio-code

# Sublime Text (second favorite editor)
brew install --cask sublime-text

# Docker for containerization
brew install docker

# ---------------------------------------------
# Useful tools
# ---------------------------------------------

brew install ssh-copy-id

# Show directory structure with excellent formatting
# brew install tree

# aText
brew install --cask atext

# Alfred
brew install --cask alfred

# ---------------------------------------------
# Web tools
# ---------------------------------------------

# Postman
brew install --cask postman

# Browsers
brew install --cask google-chrome
brew install --cask firefox

# ---------------------------------------------
# Other work tools
# ---------------------------------------------

# Communication tools
brew install --cask slack
brew install --cask skype
brew install --cask zoom
brew install --cask whatsapp

# Toggl Desktop for time tracking
brew install --cask toggl-track

# Draw.io (https://www.draw.io/)
brew install --cask drawio

# Notion
brew install --cask notion

# ---------------------------------------------
# Entertainment
# ---------------------------------------------

brew install --cask spotify
brew install --cask vlc

# ---------------------------------------------
# Misc
# ---------------------------------------------

# Flux for saving myself from that blue light
brew install --cask flux

# Spectacle for moving windows around (development discontinued though) 
brew install --cask spectacle

# ---------------------------------------------
# Tools to install on personal setup
# ---------------------------------------------
brew install --cask messenger # Facebook messenger
brew install --cask transmission

# Remove outdated versions from the cellar
brew cleanup