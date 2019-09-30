#!/bin/sh

echo "Setting up your Mac..."

#installing command line tools without Xcode itself
xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap Homebrew/bundle
brew bundle

#####################
# Symlinks
#####################

# mackup symlings .bash_profiles to Dropbox, thus below not necessary
#ln -s ~/.dotfiles/.bash_profile ~

# Create a code directory for coding projects
mkdir $HOME/code

# Set macOS preferences
# We will run this last because this will reload the shell
# source macos
