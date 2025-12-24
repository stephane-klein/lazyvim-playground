# My LazyVim playground

I'm using this playground to configure and learn how to use the [LazyVim](https://www.lazyvim.org) distribution before
possibly migrating completely to this solution. If my test is successful, I will include this
configuration in my [`dotfiles`](https://github.com/stephane-klein/dotfiles/).

Roadmap:

- [ ] Configure my keymap preferences for navigation and window splitting
- [ ] Setup OpenRouter in Avante.nvim
- [ ] Add TreeSitter plugin to install
- [x] Add Mason package to install
- ...

Small detail: I use the [Bepo](https://en.wikipedia.org/wiki/B%C3%89PO) keyboard layout, so I don't use the standard HJKL keys to move.
My configuration takes this constraint into account.

The `./start_sandboxed-neovim.sh` script launches Neovim in a sandboxed environment
using the [`NVIM_APPNAME`](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME) method.

The script creates a symbolic link from `./config/` to `~/.config/neovim_playground/`,
allowing you to edit the Neovim configuration directly in this repository (in `./config/`).

As a consequence, there is no risk of disrupting your global Neovim instance on your workstation.

**Note:** This playground uses Mise to install a specific version of Neovim, ensuring a consistent
and isolated environment that won't interfere with your system's Neovim installation.

## Prerequisites

### Installing Mise on Fedora Workstation

This project uses [Mise](https://mise.jdx.dev/) to manage the Neovim version, Go toolchain, and
other project dependencies.

To install Mise on Fedora Workstation:

```bash
# Install mise using the official installer
$ curl https://mise.run | sh

# Add mise to your shell (for bash)
$ echo 'eval "$(~/.local/bin/mise activate bash)"' >> ~/.bashrc
$ source ~/.bashrc

# Or for zsh
$ echo 'eval "$(~/.local/bin/mise activate zsh)"' >> ~/.zshrc
$ source ~/.zshrc
```

Once Mise is installed, navigate to the project directory and run:

```bash
mise trust
mise install
```

Install Neovim packages:

```bash
mise run lazy_sync
```

This will install the specific version of Neovim and other tools defined in the project
configuration.

## Start sandboxed neovim

```bash
./start_sandboxed-neovim.sh
```

Now, you can play with your `./config/nvim/init.lua` with no risk.

Ressources:

- `:checkhealth` contains no error or warning, see output: [`checkhealth.txt`](./checkhealth.txt).
- `:Lazy health` contains no error or warning, see output: [`lazy-health.txt`](./lazy-health.txt).

## LazyVim initial setup

Here's how I initialized LazyVim at the beginning of this project:

```bash
git clone https://github.com/LazyVim/starter config/
```
