# A simple .zshrc
#
alias ls='ls -G'
alias k=`kubectl`

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -v
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line

zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

MENU_COMPLETE=true

autoload -Uz compinit
compinit

source <(antibody init)
antibody bundle < ~/.zsh_plugins.txt

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "^[b" emacs-backward-word
bindkey "^[f" emacs-forward-word

export EDITOR='nvim'

# export PYENV_ROOT="$HOME/.pyenv"
# export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"
# export PATH="$PYENV_ROOT/bin:$PATH"

# export KUBECONFIG=`ls $HOME/.kube/config* |  paste -sd ':' -`

# export GOPATH=$(go env GOPATH)

export PATH="$GOPATH/bin:$PATH:/usr/local/sbin"

# if command -v pyenv 1>/dev/null 2>&1; then
#   eval "$(pyenv init -)"
# fi

# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

source <(kubectl completion zsh)
