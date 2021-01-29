# remove old folder
rm ~/.config/nvim -rf

# create folder
mkdir ~/.config/nvim -p

# download vim-plug
if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" ]; then
	curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# link config file
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim
