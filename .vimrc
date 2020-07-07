syntax on
let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

set noswapfile
set nobackup
set noerrorbells
set novisualbell
set nowrap

set encoding=utf-8
set fileencodings=utf-8,shift-jis,cp932,cp936,latin1
set fileformats=unix,dos,mac

set nu
set relativenumber
set bg=dark
color gruvbox
set list
set listchars=eol:#,space:^,extends:>

nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

