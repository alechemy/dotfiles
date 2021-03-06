#!/bin/sh
# Source: https://gist.github.com/gfguthrie/9f9e3908745694c81330c01111a9d642

# normal brew nvm shell config lines minus the 2nd one
# lazy loading the bash completions does not save us meaningful shell startup time, so we won't do it
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# add our default nvm node (`nvm alias default 10.16.0`) to path without loading nvm
export PATH="$NVM_DIR/versions/node/v$(<$NVM_DIR/alias/default)/bin:$PATH"
# alias `nvm` to this one liner lazy load of the normal nvm script
alias nvm="unalias nvm; [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"; nvm $@"

# note: can fix Nova TSServer error with this:
# ❯ ln -s /usr/local/bin/npm /usr/local/Cellar/node/13.12.0/bin/npm
# Source: https://github.com/neovim/nvim-lspconfig/issues/233#issuecomment-628523540
