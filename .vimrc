set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

set tabstop=4
set shiftwidth=4
set softtabstop=4

set scrolloff=15

set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap = nzz
noremap - Nzz
noremap <leader><cr> :nohlsearch<cr>

noremap J 5j
noremap K 5k
noremap H 7h
noremap L 7l
noremap <c-h> 0
noremap <c-l> $

map s <nop>
map S :w<cr>
map Q :q<cr>
map R :source $MYVIMRC<cr>

map sh :set nosplitright<cr>:vsplit<cr>
map sj :set splitbelow<cr>:split<cr>
map sk :set nosplitbelow<cr>:split<cr>
map sl :set splitright<cr>:vsplit<cr>

map <leader>h <c-w>h
map <leader>j <c-w>j
map <leader>k <c-w>k
map <leader>l <c-w>l

map <up> :res +5<cr>
map <down> :res -5<cr>
map <left> :vertical resize+5<cr>
map <right> :vertical resize-5<cr>

call plug#begin('~/.vim/plugged')
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()
