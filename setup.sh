#!/bin/bash

# Verify if some requirements are installed before starting

CHECK_ZSH_INSTALLED=$(grep /zsh$ /etc/shells | wc -l)
if [ ! $CHECK_ZSH_INSTALLED -ge 1 ]; then
	echo "Zsh is not installed."
	exit 1
fi

if ! [ -x "$(command -v git)" ]; then
	echo "Git is not installed"
	exit 1
fi

if ! [  -x "$(command -v nvim)" ]; then
	echo "Neovim is not installed."
	exit 1
fi

if [ ! hash curl 2> /dev/null ]; then
	echo "Curl is not installed."
	exit
fi

echo "Installing vim plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Symlink stuff
echo "Setting up .bash_profile, .zshrc and init.vim"
mkdir -p ~/.config/nvim
touch ~/.bash_private
touch ~/.zsh_private

ln -sf $PWD/bash_profile  ~/.bash_profile
ln -sf $PWD/zshrc ~/.zshrc
ln -sf $PWD/init.vim ~/.config/nvim/init.vim
chsh -s $(which zsh)

echo "Done! use ~/.bash_private and ~/.zsh_private for private. Please restart the terminal" 
