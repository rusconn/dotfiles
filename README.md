# dotfiles

Execute in order from top to bottom.

## macOS

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

# cargo
cargo install cargo-binstall
cargo binstall -y cargo-audit cargo-cache cargo-edit cargo-expand \
  cargo-license cargo-msrv kondo samply sasurahime
```

## Linux

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

# cargo
cargo install cargo-binstall
cargo binstall -y cargo-audit cargo-cache cargo-edit cargo-expand \
  cargo-license cargo-msrv kondo samply
```
