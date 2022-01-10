#!/bin/sh
alias default="_get_default() { default = git remote show origin | grep 'HEAD branch' | cut -d' ' -f5;}; _get_default"
alias gitclean='git branch -d $(git branch --merged=main | grep -v main) && git fetch --prune'
