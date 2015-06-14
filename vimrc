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
Plugin 'Shougo/neocomplete.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-commentary'
Plugin 'Yggdroot/indentLine'
Plugin 'tomasr/molokai'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype indent plugin on    " required

set t_Co=256
colorscheme molokai

set shell=zsh

syntax on
set nu

set cursorline
if exists('+colorcolumn')
    autocmd FileType python set colorcolumn=80
endif

let mapleader=","

set wildmenu
set wildignore=*.o,*.pyc
set autoindent
set noswapfile
set hidden
set undofile

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

set completeopt-=preview

" repeated visual indentation
vnoremap > >gv
vnoremap < <gv

" Airline
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" gitgutter
let g:gitgutter_sign_added = '✚'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '✘'
let g:gitgutter_sign_modified_removed = '●✘'

" RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1

" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=2
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif

" golang fix
let g:neocomplete#sources#omni#input_patterns.go = '[^.[:digit:] *\t]\.\w*'

"" indentLine
let g:indentLine_faster=1
