#!/usr/bin/env zsh

# Add fnm to path
export PATH="$HOME/.local/share/fnm:$PATH"

# fnm env setup
eval "$(fnm env --use-on-cd)"
