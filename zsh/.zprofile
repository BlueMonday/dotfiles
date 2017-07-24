export EDITOR='emacsclient -nw'
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:$(ruby -e 'print Gem.user_dir')/bin
