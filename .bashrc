# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

## USER SCECIFIC ENVIRONMENTS
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
export PATH
# Type of repository (default git)
REPO_TYPE="git"
export REPO_TYPE
export SVN_EDITOR="gvim"
# change type of repository from git to subversion and vice versa
alias svnRepo='REPO_TYPE="svn"; export REPO_TYPE'
alias gitRepo='REPO_TYPE="git"; export REPO_TYPE'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

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


## GIT AND SVN
alias g='git'
alias st='$REPO_TYPE status'
alias com='$REPO_TYPE commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='$REPO_TYPE log'
alias u='git add -u'
alias all='git add .'
alias dif='$REO_TYPE diff | gvim -'


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
#export GREP_OPTIONS='--color=auto'
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
alias grep='grep -nri --color=auto'
alias gr='grep -nri --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
