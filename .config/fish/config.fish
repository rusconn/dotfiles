if status is-login
    eval (/opt/homebrew/bin/brew shellenv)

    # google-cloud-sdk
    source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

    # Added by OrbStack: command-line tools and integration
    source ~/.orbstack/shell/init.fish 2>/dev/null || :
end

# mise
mise activate fish | source
