"===
"=== neovimrc
"=== by hug
"===

"===
"=== shortkeys
"===
" leader key
let mapleader=" "
" quick command key
nmap ; :
" save and quit
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
" vimrc
nnoremap <leader>ev :edit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :resource %<cr>
" buffer
nnoremap <leader>h :bp<cr>
nnoremap <leader>l :bn<cr>
nnoremap <leader>d :bd<cr>
" search
nnoremap / /\v
nnoremap <script> <leader><cr> ::nohlsearch<cr>
"copy
nnoremap Y y$
"space to tab
nnoremap <leader>tt :%s/    /\t/g
vnoremap <leader>tt :s/    /\t/g
" insert mode cursor movement
inoremap <c-a> <esc>I
inoremap <c-e> <esc>A
" command mode cursor movement
cnoremap <c-a> <home>
cnoremap <c-e> <end>
cnoremap <c-p> <up>
cnoremap <c-n> <down>
cnoremap <c-b> <left>
cnoremap <c-f> <right>
cnoremap <m-b> <s-left>
cnoremap <m-w> <s-right>
" window management
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
" window split
noremap s <nop>
noremap sk :set nosplitbelow<cr>:split<cr>:set splitbelow<cr>
noremap sj :set splitbelow<cr>:split<cr>
noremap sl :set nosplitright<cr>:vsplit<cr>:set splitright<cr>
noremap sh :set splitright<cr>:vsplit<cr>
" window resize
noremap <up> :res +5<cr>
noremap <down> :res -5<cr>
noremap <left> :vertical resize -5<cr>
noremap <right> :vertical resize +5<cr>

"===
"=== editor behavior
"===
set autochdir
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
set nowrap
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
set updatetime=100
set virtualedit=block
set clipboard=unnamedplus

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


"===
"=== plugins
"===
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'mg979/vim-visual-multi'
Plug 'iamcco/markdown-preview.nvim'
Plug 'preservim/nerdcommenter'

call plug#end()

"===
"=== coc.nvim
"===
let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-yank']
inoremap <silent><expr> <TAB>
	\ pumvisible() ? "\<C-n>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()
function! Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap tt :CocCommand explorer<cr>
nnoremap <c-c> :CocCommand<cr>
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

"===
"=== gruvbox
"===
set background=dark
color gruvbox
