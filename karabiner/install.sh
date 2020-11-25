#!/bin/sh
if command -v mdfind -name 'kMDItemFSName=="Karabiner-Elements.app"' >/dev/null; then
    KARABINER_HOME="$HOME/.config/karabiner"

    ln -sf "$DOTFILES/karabiner/karabiner.json" "$KARABINER_HOME/karabiner.json"
fi
