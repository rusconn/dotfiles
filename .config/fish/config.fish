if status is-login
    eval (/opt/homebrew/bin/brew shellenv)

    # google-cloud-sdk
    source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"
end
