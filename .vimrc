syntax on
let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'skanehira/preview-markdown.vim'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

set noswapfile
set nobackup
set noerrorbells
set novisualbell
set nowrap
set autochdir
set hidden

set encoding=utf-8
set fileencodings=utf-8,shift-jis,cp932,cp936,latin1
set fileformats=unix,dos,mac

set nu
set relativenumber
set bg=dark
color gruvbox
set list
set listchars=eol:#,space:^,extends:>


set hlsearch
set incsearch
set smartcase
set ignorecase
exec ':set nohls'
nnoremap <leader><cr> :nohls<cr>


set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab


nnoremap <leader>ev :e ~/.vimrc<cr>
nnoremap <leader>sv :source ~/.vimrc<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

nnoremap <C-p> :FZF<cr>
inoremap <C-p> <esc>:FZF<cr>

nnoremap <leader>l :bn<cr>

nnoremap <leader>p "*p
nnoremap <leader>y "*y

nnoremap <leader>m :PreviewMarkdown<cr>
let g:preview_markdown_vertical = 1
