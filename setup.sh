echo "Installing vim plug"
if curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim; then
	
	echo "Vim plug installed"
else
	echo "Error while installing vim plug"
	exit
fi

# Install Oh My Zsh
which zsh
if [ $? -eq 0 ]; then
	echo "Installing Oh My Zsh..."
	if sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"; then
		echo "Installed oh my zsh"
	else
		echo "Error while installing oh my zsh. (Already installed?)"
	fi

	echo "Installing powerlevel10k"
	if git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k; then
		echo "Installed powerlevel10k"
		echo "Please run \"p10k configure\""
	else
		echo "Error while installing powerlevel10k (Already installed?)"
	fi
fi

# Symlink stuff
echo "Setting up bash/zsh profile and init.vim"
mkdir -p ~/.config/nvim

which zsh
if [ $? -eq 0 ]; then
	touch ~/.zsh_private
	ln -sf $PWD/zshrc ~/.zshrc	
else
	ln -sf $PWD/bash_profile  ~/.bash_profile
fi

ln -sf $PWD/init.vim ~/.config/nvim/init.vim


echo "Done!" 
echo "Use ~/.bash_private and ~/.zsh_private for private bash/zsh profile edit."
echo "Restart the terminal."
