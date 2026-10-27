#!/bin/sh
set -eu

if [ -s "$HOME/.zprezto/init.zsh" ]; then
  exit 0
fi

if ! command -v git >/dev/null 2>&1; then
  echo "Prezto requires git, but git was not found in PATH." >&2
  exit 1
fi

git clone https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"
