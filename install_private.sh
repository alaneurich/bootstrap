#!/bin/bash

if ! xcode-select -p &>/dev/null; then
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
  PROD=$(softwareupdate -l | grep "\*.*Command Line" | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
  softwareupdate -i "$PROD" --verbose
  rm /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
fi

DOTFILES_DIR="$HOME/.dotfiles"
git clone git@github.com:m76-labs/dotfiles.git "$DOTFILES_DIR"
exec bash "$DOTFILES_DIR/.local/bin/m76_bootstrap"
