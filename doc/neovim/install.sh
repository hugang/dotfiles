rm ~/.config/nvim -rf
# create folder
mkdir ~/.config/nvim -p

# download vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# copy config
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim
