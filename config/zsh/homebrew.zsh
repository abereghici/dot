#!/usr/bin/env zsh

# Cancel those terrible ideas Homebrew had of forcing update every 300 s and
# forcing a 3 s curl on every single run.
HOMEBREW_NO_AUTO_UPDATE=1
HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE HOMEBREW_NO_ANALYTICS
