ZSH=$HOME/.oh-my-zsh

ZSH_THEME="bira"

DISABLE_AUTO_UPDATE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="mm/dd/yyyy"

plugins=(docker docker-compose git golang pip ssh-agent vagrant)

source $ZSH/oh-my-zsh.sh

alias -g vim='nvim'

export GOPATH=$HOME/go
export PATH=$HOME/bin:/usr/local/bin:$PATH:$GOPATH/bin

export EDITOR='nvim'

zstyle :omz:plugins:ssh-agent agent-forwarding on
