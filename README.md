# dots

Personal shell configuration for zsh and CLI tools.

## Installation

First, install the required packages using brew:

```bash
brew install bat git-delta eza fd fzf gh jq neovim starship tmux zoxide
```

For the icons that come with `eza` to properly work, you will also need a NerdFont like [FiraCode](https://www.nerdfonts.com/font-downloads#:~:text=Preview-,FiraCode,-%E2%80%A2%20Version%3A%206.2).

Then, run the install script:

```bash
./install.zsh
```

This will:
- Initialize and update git submodules
- Create symlinks for configuration files
- Automatically reload the shell

## Structure

- `dots/` - Core dotfiles (`~/.zshrc`, `~/.tmux.conf` etc)
- `config/` - xdg style config directory files (`~/.config/`)
  - `zsh/` - zsh configuration modules
  - `tmux/` - tmux configuration
- `custom/` - custom scripts and local overrides

## Tools

- `dots` or `...` is a utility to manage the project
  - `dots reload` - reloads the config. Aliased to `.r`
  - `dots doctor` - some simple health checks. Aliased to `.d`
  - `dots update` - get the latest config. Aliased to `.u`
