# dotfiles

## Setup

### 1. Install chezmoi

```sh
sh -c "$(curl -fsLS get.chezmoi.io)"
```

### 2. Apply dotfiles

```sh
./bin/chezmoi init --apply $GITHUB_USERNAME
```
