if status is-login
    # Rust
    string match -q -r ".*:$HOME/.cargo/bin:.*" $PATH
    if not test $status -eq 0
        set -x PATH $HOME/.cargo/bin $PATH
    end

    eval (/opt/homebrew/bin/brew shellenv)
end

# mise
mise activate fish | source
