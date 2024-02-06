if status is-login
    eval (/opt/homebrew/bin/brew shellenv)

    # google-cloud-sdk
    source "$(brew --prefix)/share/google-cloud-sdk/path.fish.inc"

    # Added by OrbStack: command-line tools and integration
    source ~/.orbstack/shell/init.fish 2>/dev/null || :

    # Rust
    string match -q -r ".*:$HOME/.cargo/bin:.*" $PATH
    if not test $status -eq 0
        set -x PATH $HOME/.cargo/bin $PATH
    end
end

# mise
mise activate fish | source
