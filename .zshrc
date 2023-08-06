# prompt
PROMPT='%c %# '

# disable ctrl-s, ctrl-q
setopt no_flow_control

# bash-like time format
TIMEFMT=$'\nreal\t%*Es\nuser\t%*Us\nsys\t%*Ss'

# history config
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_STORE

# comprehension
autoload -Uz compinit
compinit

# aliases
alias ls='exa'
alias ll='ls -la'
alias grep='rg'
alias find='fd'
alias wc='tokei'

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
export VOLTA_FEATURE_PNPM=1
