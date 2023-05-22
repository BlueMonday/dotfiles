ZSH=/usr/share/oh-my-zsh

ZSH_THEME="bira"

DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(docker docker-compose git golang pip ssh-agent kubectl asdf)

source $ZSH/oh-my-zsh.sh

alias -g emacs='emacsclient -nw'
alias -g vim='nvim'


zstyle :omz:plugins:ssh-agent agent-forwarding on
