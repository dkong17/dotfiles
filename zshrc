# A simple .zshrc
#

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

zstyle :compinstall filename '/Users/patrickrogers/.zshrc'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < .zsh_bundles

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export EDITOR='nvim'
