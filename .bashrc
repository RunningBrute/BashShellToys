# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH

## User specific aliases and functions
## a lot configuration is from following articles:
#   - https://medium.com/@tzhenghao/a-guide-to-building-a-great-bashrc-23c52e466b1c
#   - https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html

## COMMON COMMANDS
alias q='exit'
alias c='clear'
alias h='history'
alias cs='clear; ls'
alias p='cat'
alias pd='pwd'
alias t='time'
alias k='kill'
alias null='/dev/null'
alias o='gvim'



## DIRECTORIES
alias home='cd ~'
alias root='cd /'
## get rid of command not found ##
alias cd..='cd ..'
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'



## GIT
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add .'



## PROGRAM ALIASES
alias python='python3'
alias pip='pip3'
# Shortcuts to vimrc and bashrc
alias vimrc='gvim ~/.vimrc'
alias bashrc='gvim ~/.bash_profile'
alias loadbash='source ~/.bash_profile'
# Ctags.
alias gentags='ctags -R .'



## UNIX COMMAND OPTIONS
# Let there be color in grep!
export GREP_OPTIONS=' — color=auto'
# Set gvim as my default editor
export EDITOR=gvim
## Colorize the ls output ##
alias ls='ls --color=auto' 
## Use a long listing format ##
alias ll='ls -la'
alias la='ls -a'
## Show hidden files ##
alias l.='ls -d .* --color=auto'
## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
