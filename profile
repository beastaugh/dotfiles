# Add homebrew binaries and /usr/local to the $PATH
export PATH="/usr/local/homebrew/bin:/usr/local/homebrew/sbin:~/bin:~/.cabal/bin:/usr/local/bin:$PATH"

# Gem path using homebrew
export GEM_HOME="$(brew --prefix)/Cellar/Gems/1.9"
export GEM_PATH="$(brew --prefix)/Cellar/Gems/1.9"

# Default editors for VCSs
export GIT_EDITOR="nano"
export SVN_EDITOR="nano"

# ls aliases
alias ll="ls -lh"
alias la="ls -Ah"
alias lla="ls -lAh"

# Use hub with git
alias git="hub"

# Always accept gzipped content when using cURL
alias curl="curl -H 'Accept-Encoding: gzip' --compressed"

# Wrap Node REPL with readline
alias node-repl="rlwrap node-repl"

# Tweak history settings
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

# To show current Git branch
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("${ref#refs/heads/}")"
}

# Colours
NORMAL="\[\033[m\]"
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

# Customise prompt
PS1="$YELLOW\w$RED\$(parse_git_branch) $GREEN\$ $NORMAL"

# Colours
export CLICOLOR=1
export LSCOLORS="exfxcxdxbxegedabagacad"

# Java / Maven config
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export MAVEN_OPTS="-Xms128M -Xmx256M -Djava.awt.headless=true"
export OTHEROBJECTS_HOME="/Users/beastaugh/projects/oo"
export PATH="$OTHEROBJECTS_HOME/bin:$PATH"

# SSH hostname autocompletion
complete -W "$(echo $(cat ~/.ssh/known_hosts | \
    cut -f 1 -d ' ' | sed -e s/,.*//g | \
    sort -u | grep -v "\["))" ssh
