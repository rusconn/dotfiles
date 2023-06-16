eval $(/opt/homebrew/bin/brew shellenv)

# google-cloud-sdk
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# deno binaries
export PATH="$HOME/.deno/bin:$PATH"
