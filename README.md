# Dotfiles

## Overview

This repository leverages [yadm](https://yadm.io) to manage dotfiles, settings, and text files in my macOS home directory. `yadm` simplifies tracking and synchronizing these files across systems. The local `yadm` repository is stored at `.local/share/yadm/repo.git`.

## Regular Maintenance

To ensure everything stays up-to-date, run the following commands (using the provided [aliases](./.aliases)) regularly, ideally on a weekly basis.

### Update Global NPM Packages

- Check for outdated packages:

```zsh
ngo
```

- Update outdated packages (if applicable).

```zsh
npm -g update
```

### Update Neovim

- Open Neovim:

```zsh
n
```

- Update LazyVim plugins. Inside Neovim, type "l" to open LazyVim and "U" to update plugins. And then, quit Neovim.

### Update Rustup and Homebrew

```zsh
r && b
```

### Update Hammerspoon's VimMode Spoon

```zsh
vms
```

### Track and Push Changes in `yadm`

- Stage changes:

```zsh
us
```

- Add specific files:

```zsh
u add [path/to/file...]
```

- Commit and push changes:

```zsh
ucm "Commit message" && up
```
