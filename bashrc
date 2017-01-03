#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias l='ls -l'
alias vi='vim'
alias grep='grep --color=always'

PS1='[\u@\h \W]\$ '

export PATH="$PATH":"~/.pub-cache/bin"

export PROJECT_HOME=~/Devel
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

