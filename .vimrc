set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-unimpaired'

filetype indent plugin on

set t_Co=256
colorscheme molokai

syntax on
set nu

set cursorline
if exists('+colorcolumn')
    set colorcolumn=80
endif

set wildmenu
set wildignore=*.o,*.pyc
set autoindent
set noswapfile
set hidden

set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase

autocmd BufWritePre * :%s/\s\+$//e

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
