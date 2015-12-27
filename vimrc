call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
Plug 'scrooloose/syntastic'
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 install.py --clang-completer' }
Plug 'fatih/vim-go'
Plug 'Yggdroot/indentLine'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'ntpeters/vim-better-whitespace'
Plug 'kien/rainbow_parentheses.vim'
Plug 'airblade/vim-gitgutter'
Plug 'rodjek/vim-puppet'
Plug 'godlygeek/tabular'
Plug 'fisadev/vim-isort'
Plug 'rking/ag.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'jtratner/vim-flavored-markdown'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'ludovicchabant/vim-gutentags'
Plug 'majutsushi/tagbar'
call plug#end()

set t_Co=256
colorscheme Tomorrow-Night-Eighties
set background=dark

set shell=zsh
let mapleader=","

set nu
set rnu

set cursorline

set wildignore=*.o,*.so,*.pyc,*.zip
set noswapfile
set undodir=~/.vim/undo
set hidden
set undofile

set hlsearch
set scrolloff=5
set ignorecase
set smartcase

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set completeopt-=preview

" Remove ex mode mapping. I always end up entering ex mode by
" accident *table flip*.
nnoremap Q <Nop>

" repeated visual indentation
vnoremap > >gv
vnoremap < <gv

nnoremap <F8> :TagbarToggle<CR>
nnoremap <leader>p :CtrlPTag<CR>

augroup colour_column
    autocmd FileType python set colorcolumn=80
augroup END

augroup strip_whitespace
    autocmd BufWritePre * StripWhitespace
augroup END

augroup show_tabs
    autocmd FileType python,html,css,javascript set list listchars=tab:▸\
augroup END

augroup markdown
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

augroup filetype_indentation
    autocmd FileType javascript,html,css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType json,yaml setlocal ts=2 sts=2 sw=2 expandtab
augroup END

augroup rainbow_parentheses
    autocmd VimEnter * RainbowParenthesesToggle
    autocmd Syntax * RainbowParenthesesLoadRound
    autocmd Syntax * RainbowParenthesesLoadSquare
    autocmd Syntax * RainbowParenthesesLoadBraces
augroup END

" Airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" gitgutter
let g:gitgutter_sign_added='✚'
let g:gitgutter_sign_modified='●'
let g:gitgutter_sign_removed='✘_'
let g:gitgutter_sign_modified_removed='●✘'
let g:gitgutter_sign_removed_first_line='✘‾'

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_aggregate_errors=1
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_error_symbol='➔'
let g:syntastic_style_error_symbol='➔'
let g:syntastic_warning_symbol='!'
let g:syntastic_style_warning_symbol='!'

" indentLine
let g:indentLine_faster=1

" Gutentags
let g:gutentags_exclude=['venv', 'build', 'static', 'node_modules']
let g:gutentags_cache_dir='~/.vim/tags'
