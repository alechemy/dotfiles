#!/bin/sh
if command -v mdfind -name 'kMDItemFSName=="Kitty.app"' >/dev/null; then
    KITTY_HOME="$HOME/.config/kitty"

    ln -sf "$DOTFILES/kitty/kitty.conf" "$KITTY_HOME/kitty.conf"
fi
