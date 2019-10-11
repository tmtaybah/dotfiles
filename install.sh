#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

# set paths
homedir=$1
dotfiledir=${homedir}/dotfiles


# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}

# install brew
echo "Installing Homebrew ..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# run the brew script (installs most applications)
echo "Installing packages using brew ..."
./brew.sh


# change shell to zsh
echo "changing shell from bash to zsh "
SHELL=/usr/local/bin/   # brew version of zsh
echo $SHELL | sudo tee -a /etc/shells
chsh -s $(which zsh)
source ~/.zshrc


# install oh-my-zsh
echo "Installing oh-my-zsh ..."
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# install pure theme
echo "Installing pure theme ..."
npm install --global pure-prompt


# download iterm2 one-dark theme
git clone https://github.com/anunez/one-dark-iterm.git


# list of files/folders to symlink in ${homedir}
files="zshrc vimrc"

# create symlinks (will overwrite old dotfiles)
echo "Creating symbolic link for dotfiles"
for file in ${files}; do
   echo "Creating symlink to $file in home directory."
   ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
echo "...done"


# install essential python packages
echo "Installing python essentials ... "
pip3 install -r py_essentials.txt
