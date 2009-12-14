# Add homebrew binaries and /usr/local to the $PATH
export PATH="/usr/local/homebrew/bin:/usr/local/bin:$PATH"

# Gem path using homebrew
export GEM_HOME="$(brew --prefix)/Cellar/Gems/1.9"
export GEM_PATH="$(brew --prefix)/Cellar/Gems/1.9"

# Customise prompt
export PS1="\w $ "

# Default editors for VCSs
export GIT_EDITOR="nano"
export SVN_EDITOR="nano"

# ls aliases
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"

# Always accept gzipped content when using cURL
alias curl="curl -H 'Accept-Encoding: gzip' --compressed"

# Tweak history settings
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# Colours
export CLICOLOR=1
