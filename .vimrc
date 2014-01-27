set t_Co=256
colorscheme molokai

syntax on
set nu

set cursorline
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set wildmenu

set showmatch

set incsearch
set hlsearch

filetype indent plugin on

autocmd BufWritePre * :%s/\s\+$//e

set expandtab
set shiftwidth=4
set softtabstop=4

set autoindent
