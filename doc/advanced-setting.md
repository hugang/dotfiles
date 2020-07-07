## tools
```bash
sudo pacmsn -S wpa_supplicant dhcpcd
sudo pacman -S ranger feh
sudo pacman -S man git base-devel
```

## chrome
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay google-chrome
```


## font
https://github.com/ryanoasis/nerd-fonts.git

## terminal
git clone https://git.suckless.org/st
cd st
sudo make clean install

## dwm
git clone https://git.suckless.org/dwm
sudo make clean install

## vim
mkdir ~/.vim/autoload -p
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting
> edit .zshrc
plugins=(zsh-autosuggestions zsh-syntax-highlighting)
