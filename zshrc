# A simple .zshrc
#

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v

zstyle :compinstall filename '/Users/patrickrogers/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < ~/.zsh_bundles

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export EDITOR='nvim'

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Code

export PATH=$PATH

source /usr/local/bin/virtualenvwrapper.sh
