## tools
```bash
sudo pacman -S ranger feh man git picom acpi alsa-utils
```

## yay
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay google-chrome
yay lazygit
yay acpitool
```


## font
git clone https://github.com/ryanoasis/nerd-fonts.git --depth=1
cd nerd-fonts
./install.sh

## st
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
