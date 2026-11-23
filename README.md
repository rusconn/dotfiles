# dotfiles

Execute in order from top to bottom.

## Basic setup

### macOS

```sh
# Command Line Tools for Xcode (needs interaction)
xcode-select -p >/dev/null 2>&1 || xcode-select --install

# dotfiles
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply rusconn

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew bundle --global

# (reboot shell)

# mise
mise install

# skhd
skhd --install-service && skhd --start-service
```

### Linux

```sh
# dotfiles
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply rusconn

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew bundle --global

# (reboot shell)

# mise
mise install
```

## Rust setup

```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path

cargo binstall -y --strategies crate-meta-data,compile --disable-telemetry \
  cargo-audit \
  cargo-edit \
  cargo-expand \
  cargo-license \
  cargo-msrv \
  kondo \
  samply
```
