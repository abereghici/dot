#!/usr/bin/env zsh

# fnm env setup
export PATH="$HOME/.local/share/fnm:$PATH"
eval "$(fnm env --use-on-cd)"
