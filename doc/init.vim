"======================================================================
"===MYVIMRC============================================================
"======================================================================
"
"===Editor Setup===
"
"---System---
set autochdir

"---Editor Behavior
set number
set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=eol:$,tab:-->,trail:^
set scrolloff=4
set ttimeoutlen=0
set notimeout
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set novisualbell
"set colorcolumn=100
set updatetime=100
set virtualedit=block
set clipboard=unnamedplus

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"---Basic Mapping---
let mapleader=" "
noremap ; :

"buffer
nnoremap <leader>h :bp<cr>
nnoremap <leader>l :bn<cr>
nnoremap <leader>bd :bd<cr>

"search
nnoremap / /\v
nnoremap <script> <leader><cr> ::nohlsearch<cr>

"config
nnoremap <leader>ev :e ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

"save and quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

"copy
nnoremap Y y$

"space to tab
nnoremap <leader>tt :%s/    /\t/g
vnoremap <leader>tt :s/    /\t/g


"---Insert Mode Cursor Movement---
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

"---Command Mode Cursor Movement---
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <m-b> <s-left>
cnoremap <m-w> <s-right>

"---Window Management---
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

noremap s <nop>
noremap sk :set nosplitbelow<cr>:split<cr>:set splitbelow<cr>
noremap sj :set splitbelow<cr>:split<cr>
noremap sl :set nosplitright<cr>:vsplit<cr>:set splitright<cr>
noremap sh :set splitright<cr>:vsplit<cr>

noremap <up> :res +5<cr>
noremap <down> :res -5<cr>
noremap <left> :vertical resize -5<cr>
noremap <right> :vertical resize +5<cr>

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'
Plug 'morhetz/gruvbox'

call plug#end()

source ~/.config/nvim/vimrcs/coc.vim

set background=dark
"set background=light
color gruvbox

