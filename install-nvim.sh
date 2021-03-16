# neovim
NVIM_HOME=$HOME/.config/nvim

# create neovim folder if not exist
# backup neovim folder if exist
if [ ! -d "$NVIM_HOME" ]; then
	echo "neovim config home not found, create ""$NVIM_HOME"
	mkdir -p "$NVIM_HOME"
else
	echo "neovim config home found, backup to backup folder"
	mv "$NVIM_HOME" "$HOME"/.config/nvim_bak
fi

# download vim-plug
if [ ! -f "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/autoload/plug.vim" ]; then
	curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \
		--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# link to target config files
ln -s $(pwd)/neovim/init.vim "$NVIM_HOME"/init.vim
ln -s $(pwd)/neovim/coc-settings.json "$NVIM_HOME"/coc-settings.json

echo "neovim done"
