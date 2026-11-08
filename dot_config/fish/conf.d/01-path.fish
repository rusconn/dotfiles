# Rust
fish_add_path "$CARGO_HOME/bin"

# Homebrew
if status is-login
    eval (/opt/homebrew/bin/brew shellenv)
end

# ffmpeg-full
fish_add_path --move /opt/homebrew/opt/ffmpeg-full/bin

# OrbStack
if test -f ~/.orbstack/shell/init.fish
    source ~/.orbstack/shell/init.fish
end
