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

## State reset for rerunning scripts

```sh
# run_once_*
chezmoi state delete-bucket --bucket=scriptState

# run_onchange_*
chezmoi state delete-bucket --bucket=entryState
```
