# Rust
fish_add_path "$CARGO_HOME/bin"

# Homebrew
if status is-login
    if test -x /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    else if test -x /usr/local/bin/brew
        eval (/usr/local/bin/brew shellenv)
    else if test -x /home/linuxbrew/.linuxbrew/bin/brew
        eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    end
end

# ffmpeg-full
if test -d /opt/homebrew/opt/ffmpeg-full/bin
    fish_add_path --move /opt/homebrew/opt/ffmpeg-full/bin
else if test -d /usr/local/opt/ffmpeg-full/bin
    fish_add_path --move /usr/local/opt/ffmpeg-full/bin
else if test -d /home/linuxbrew/.linuxbrew/opt/ffmpeg-full/bin
    fish_add_path --move /home/linuxbrew/.linuxbrew/opt/ffmpeg-full/bin
end

# libpq
if test -d /opt/homebrew/opt/libpq/bin
    fish_add_path --move /opt/homebrew/opt/libpq/bin
else if test -d /usr/local/opt/libpq/bin
    fish_add_path --move /usr/local/opt/libpq/bin
else if test -d /home/linuxbrew/.linuxbrew/opt/libpq/bin
    fish_add_path --move /home/linuxbrew/.linuxbrew/opt/libpq/bin
end

# OrbStack
if test -f ~/.orbstack/shell/init.fish
    source ~/.orbstack/shell/init.fish
end
