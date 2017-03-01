# A simple .zshrc
#

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

zstyle :compinstall filename '/Users/patrickrogers/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < .zsh_bundles

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export EDITOR='nvim'

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go

export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
