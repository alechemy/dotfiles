# - direnv: https://direnv.net/
if command -v direnv >/dev/null 2>&1; then
  eval "$(direnv hook $(basename $SHELL))"
  # export DIRENV_WARN_TIMEOUT=100s
fi
