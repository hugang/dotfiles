git clone https://github.com/neovim/neovim.git --depth=1

yum install cmake libtool luarocks
make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=/usr
make install