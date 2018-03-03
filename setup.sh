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

# Install powerline fonts
echo "Installing powerline fonts"
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
. install.sh
cd ..
rm -rf fonts
fc-cache -f -v
echo "Done! Rerember to switch terminal font to Source Code Pro"

# Install Oh My Zsh
if [[ ! -d  ~/.oh-my-zsh/ ]]; then
	echo "Installing Oh My Zsh..."
	curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
fi

# Symlink stuff
echo "Setting up .bashrc, .zshrc and init.vim"
mkdir -p ~/.config/nvim
mkdir -p $ZSH_CUSTOM/themes

ln -sf $PWD/bash_profile  ~/.bash_profile
ln -sf $PWD/zshrc ~/.zshrc
ln -sf $PWD/customtheme.zsh-theme $ZSH_CUSTOM/themes/customtheme.zsh-theme
ln -sf $PWD/init.vim ~/.config/nvim/init.vim
chsh -s $(which zsh)

echo "Done! use ~/.bash_private and ~/.zsh_private for private. Please restart the terminal"
 


