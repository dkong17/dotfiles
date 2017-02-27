# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/patrickrogers/.zshrc'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < .zsh_bundles

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
