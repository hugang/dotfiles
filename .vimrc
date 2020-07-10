syntax on
let mapleader=" "

set nocompatible
call plug#begin('~/.vim/plugged')

"theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

"search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"quick coding
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'

"complete
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'


call plug#end()

let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_key_list_stop_completion = ['<CR>']
let g:ycm_use_ultisnips_completer = 1
let g:ycm_seed_identifiers_with_syntax = 1
nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

let g:UltiSnipsExpandTrigger ="<tab>"
let g:UltiSnipsJumpForwardTrigger ="<tab>"
let g:UltiSnipsJumpBackwardTrigger ="<s-tab>"
let g:UltiSnipsSnippetsDir ="~/.vim/UltiSnips"

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

