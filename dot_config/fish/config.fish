if status is-login
    # Rust
    fish_add_path "$HOME/.cargo/bin"

    # Homebrew
    eval (/opt/homebrew/bin/brew shellenv)

    # ffmpeg-full
    fish_add_path --move --prepend /opt/homebrew/opt/ffmpeg-full/bin

    # OrbStack
    if test -f ~/.orbstack/shell/init.fish
        source ~/.orbstack/shell/init.fish
    end

    # mise
    if type -q mise
        mise activate fish | source
    end
end
