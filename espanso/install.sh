#!/bin/sh
if command -v espanso >/dev/null; then
	ESPANSO_HOME="$HOME/Library/Preferences/espanso"

	ln -sf "$DOTFILES/espanso/default.yml" "$ESPANSO_HOME/default.yml"
fi
