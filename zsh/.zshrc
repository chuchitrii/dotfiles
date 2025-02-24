zstyle ':omz:plugins:nvm' lazy yes

export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="${HOME}/tmp"
export XDG_STATE_HOME="$HOME/.local/state"

CASE_SENSITIVE="true"

ZSH_THEME=robbyrussell

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

plugins=(git nvm)
plugins+=(zsh-vi-mode)

source $ZSH/oh-my-zsh.sh

if [[ -f $HOME/env.sh ]]; then
  source $HOME/env.sh
fi

if [[ -f $HOME/path.sh ]]; then
  source $HOME/path.sh
fi
