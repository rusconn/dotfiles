# XDG Base Directory Specification
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state

# Tool dirs
set -gx AWS_CONFIG_FILE $XDG_CONFIG_HOME/aws/config
set -gx AWS_SHARED_CREDENTIALS_FILE $XDG_CONFIG_HOME/aws/credentials
set -gx CARGO_HOME $XDG_DATA_HOME/cargo
set -gx DOCKER_CONFIG $XDG_CONFIG_HOME/docker
set -gx GOPATH $XDG_DATA_HOME/go
set -gx HOMEBREW_BUNDLE_FILE_GLOBAL $XDG_CONFIG_HOME/homebrew/Brewfile
set -gx HOMEBREW_CACHE $XDG_CACHE_HOME/homebrew
set -gx HOMEBREW_CONFIG_HOME $XDG_CONFIG_HOME/homebrew
set -gx HOMEBREW_LOGS $XDG_STATE_HOME/homebrew/logs
set -gx NODE_REPL_HISTORY $XDG_DATA_HOME/node_repl_history
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx NPM_CONFIG_CACHE $XDG_CACHE_HOME/npm
set -gx NPM_CONFIG_PREFIX $XDG_DATA_HOME/npm
set -gx NPM_CONFIG_INIT_MODULE $XDG_CONFIG_HOME/npm/config/npm-init.js
set -gx RUSTUP_HOME $XDG_DATA_HOME/rustup
set -gx WASMER_CACHE_DIR $XDG_CACHE_HOME/wasmer
set -gx WASMER_DIR $XDG_CONFIG_HOME/wasmer
set -gx ZDOTDIR $XDG_CONFIG_HOME/zsh
