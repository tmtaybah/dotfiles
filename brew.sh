#!/usr/bin/env bash

brew install wget

# zsh
echo "installing zsh..."
brew install zsh zsh-completions
brew install zsh-syntax-highlighting

# macos applications
echo "installing all basic applications..."
brew cask install atom
brew cask install bitwarden
brew cask install calibre
brew cask install dashlane
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
brew install python
brew install pyenv
brew install tree
