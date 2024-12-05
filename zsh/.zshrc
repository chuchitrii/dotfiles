zstyle ':omz:plugins:nvm' lazy yes


export PATH=$HOME/bin:/usr/local/bin:$HOME/go/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="/tmp/${USER}-runtime-dir"
export XDG_STATE_HOME="$HOME/.local/state"

CASE_SENSITIVE="true"

ZSH_THEME=robbyrussell

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

alias cdd='cd ./$(fd -H --type d | fzf)'

plugins=(git nvm)
plugins+=(zsh-vi-mode)

source $ZSH/oh-my-zsh.sh
