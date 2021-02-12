#!/bin/zsh
export LSCOLORS='exfxcxdxbxegedabagacad'
export CLICOLOR=true

fpath=($DOTFILES/functions $fpath)
fpath=($DOTFILES/ffs $fpath)

autoload -U $fpath[1]/*(.:t)
autoload -U history-search-end

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# allow functions to have local options
setopt LOCAL_OPTIONS
# allow functions to have local traps
setopt LOCAL_TRAPS
# switch directories without 'cd'
setopt AUTO_CD
setopt CDABLE_VARS
# add timestamps to history
setopt EXTENDED_HISTORY
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
# adds history
setopt APPEND_HISTORY
# adds history incrementally and share it across sessions
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# emacs mode
bindkey -e

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

# search history with fzf if installed, default otherwise
if test -d /usr/local/opt/fzf/shell; then
  # shellcheck disable=SC1091
  . /usr/local/opt/fzf/shell/key-bindings.zsh
else
  bindkey '^R' history-incremental-search-backward
fi
