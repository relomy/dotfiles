# Dotfiles

This repository uses chezmoi. The `chezmoi/` directory contains the managed configuration.

## Set up on another Mac

Install Git and chezmoi. With Homebrew:

```sh
brew install chezmoi
```

### If `~/.dotfiles` already exists

Update the checkout with your normal Git workflow if needed, then initialize chezmoi:

```sh
chezmoi --source "$HOME/.dotfiles" init
```

### If `~/.dotfiles` does not exist

```sh
git clone https://github.com/relomy/dotfiles.git "$HOME/.dotfiles"
chezmoi --source "$HOME/.dotfiles" init
```

### Review and apply

```sh
chezmoi diff
chezmoi apply
```

Chezmoi does not make automatic backups of existing files. Review the diff and back up any files you may want to keep before applying. The setup installs Prezto if it is missing; install bat, Ghostty, Starship, and optional shell tools separately. The bat config selects Catppuccin Mocha. These configs currently assume macOS.
