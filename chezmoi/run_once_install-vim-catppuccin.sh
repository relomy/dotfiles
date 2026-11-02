#!/bin/sh
set -eu

target="$HOME/.vim/pack/vendor/start/catppuccin"

if [ -d "$target/.git" ]; then
  exit 0
fi

mkdir -p "$(dirname "$target")"
git clone https://github.com/catppuccin/vim.git "$target"
