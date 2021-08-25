#!/bin/sh
set -e
code-insiders --list-extensions > "$DOTFILES/vscode/extensions.txt"
