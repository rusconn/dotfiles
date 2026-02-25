if status is-login
    # .env
    export (cat ~/.env)

    # Rust
    string match -q -r ".*:$HOME/.cargo/bin:.*" $PATH
    if not test $status -eq 0
        set -x PATH $HOME/.cargo/bin $PATH
    end

    eval (/opt/homebrew/bin/brew shellenv)

    # Added by OrbStack: command-line tools and integration
    source ~/.orbstack/shell/init.fish 2>/dev/null || :
end

# mise
mise activate fish | source
