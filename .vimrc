set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/syntastic'
Plugin 'tomasr/molokai'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on    " required

set t_Co=256
colorscheme molokai

syntax on
set nu

set cursorline
if exists('+colorcolumn')
    set colorcolumn=80
endif

let mapleader=","

set wildmenu
set wildignore=*.o,*.pyc
set autoindent
set noswapfile
set hidden

set incsearch
set hlsearch
set scrolloff=5
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

" repeated visual indentation
vnoremap > >gv
vnoremap < <gv

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_aggregate_errors = 1

"" YCM
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
