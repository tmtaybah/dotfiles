#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "Usage: install.sh <home_directory>"
    exit 1
fi

homedir=$1

# dotfiles directory
dotfiledir=${homedir}/dotfiles

# list of files/folders to symlink in ${homedir}
files="zshrc vimrc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -sf ${dotfiledir}/.${file} ${homedir}/.${file}
done
echo "...done"


# run the brew script (installs most applications)
./brew.sh


# change shell to zsh .. this will be obsolete soon
echo "changing shell from bash to zsh "
SHELL=/usr/local/bin/zsh
echo $SHELL >> /etc/shells
chsh -s $(which zsh)
source ~/.zshrc


# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"


# download iterm2 one-dark theme
git clone https://github.com/anunez/one-dark-iterm.git


# install essential python packages
pip3 install -r py_essentials.txt
