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

set ai
set ci
set si

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
map <leader>w <c-w>w

map <up> :res +5<cr>
map <down> :res -5<cr>
map <left> :vertical resize+5<cr>
map <right> :vertical resize-5<cr>

call plug#begin('~/.vim/plugged')
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'dracula/vim', { 'as': 'dracula' }

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'itchyny/landscape.vim'
"Plug 'jacoborus/tender.vim'

Plug 'itchyny/lightline.vim'
Plug 'connorholyday/vim-snazzy'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/tagbar'

Plug 'cdelledonne/vim-cmake'

Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
call plug#end()

"colorscheme dracula
"colorscheme landscape
colorscheme snazzy

"
"let g:airline_theme='dracula'
"let g:airline_theme='tender'

"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"
nmap <F8> :TagbarToggle<CR>
let g:tagbar_position = 'leftabove vertical'

"
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }
