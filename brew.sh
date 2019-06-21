#!/usr/bin/env bash

# zsh
echo "installing zsh..."
brew install zsh zsh-completions

# macos applications
echo "installing all basic applications..."
brew cask install atom
brew install calibre
brew cask install dashlane
brew cask install docker
brew cask install evernote
brew cask install firefox
brew install google-chrome
brew cask install google-backup-and-sync
brew cask install iterm2
brew cask install spotify
brew cask install transmission
brew cask install vlc
brew cask install virtualbox
brew cask install whatsapp
brew cask install wireshark


# postgres setup
echo "installing all postgres..."
brew install postgresql
brew cask install pgadmin4
brew cask install postgres

# other brew things
brew install python
brew install tree
