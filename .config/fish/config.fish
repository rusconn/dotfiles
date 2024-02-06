if status is-login
    # Rust
    string match -q -r ".*:$HOME/.cargo/bin:.*" $PATH
    if not test $status -eq 0
        set -x PATH $HOME/.cargo/bin $PATH
    end
end

# mise
mise activate fish | source
