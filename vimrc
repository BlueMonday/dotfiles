call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/syntastic'
Plug 'Shougo/neocomplete.vim'
Plug 'fatih/vim-go'
Plug 'tpope/vim-commentary'
Plug 'Yggdroot/indentLine'
Plug 'chriskempson/base16-vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rodjek/vim-puppet'
Plug 'godlygeek/tabular'
Plug 'fisadev/vim-isort'
Plug 'rking/ag.vim'
Plug 'hynek/vim-python-pep8-indent'
call plug#end()

set nu
set rnu

set t_Co=256
colorscheme base16-monokai
set background=dark

set shell=zsh

set cursorline
if exists('+colorcolumn')
    autocmd FileType python set colorcolumn=80
endif

let mapleader=","

set wildignore=*.o,*.pyc
set noswapfile
set undodir=~/.vim/undo
set hidden
set undofile

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

autocmd FileType javascript,json,yaml,html,css setlocal ts=2 sts=2 sw=2 expandtab

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" gitgutter
let g:gitgutter_sign_added='✚'
let g:gitgutter_sign_modified='●'
let g:gitgutter_sign_removed='✘_'
let g:gitgutter_sign_modified_removed='●✘'
let g:gitgutter_sign_removed_first_line='✘‾'

" RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_error_symbol='➔'
let g:syntastic_style_error_symbol='➔'
let g:syntastic_warning_symbol='!'
let g:syntastic_style_warning_symbol='!'

" neocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup=0
let g:neocomplete#enable_at_startup=1
let g:neocomplete#enable_smart_case=1
let g:neocomplete#sources#syntax#min_keyword_length=2
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns={}
endif
let g:neocomplete#keyword_patterns['default']='\h\w*'

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns={}
endif

" golang fix
let g:neocomplete#sources#omni#input_patterns.go='[^.[:digit:] *\t]\.\w*'

" indentLine
let g:indentLine_faster=1
