#!/usr/bin/env bash

# zsh
echo "installing zsh & zsh related things..."
brew install zsh zsh-completions zsh-syntax-highlighting z 


# macos applications
echo "installing all basic applications..."
brew cask install atom
brew cask install bitwarden
brew cask install calibre
brew cask install docker
brew cask install firefox
brew cask install google-chrome
brew cask install google-backup-and-sync
brew cask install iterm2
brew cask install spotify
brew cask install transmission
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install vlc
brew cask install whatsapp
brew cask install wireshark


# postgres setup
echo "installing all postgres..."
brew install postgresql
brew cask install pgadmin4
brew cask install postgres


# other brew things
echo "installing all other things..."
brew install tree
brew install node   # needed for pure theme
brew install wget
brew install pyenv
brew install rbenv
brew install python