syntax on
let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

call plug#end()

set noswapfile
set nobackup
set noerrorbells
set novisualbell
set nowrap

set nu
set relativenumber
set bg=dark
color gruvbox

nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

