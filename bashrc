#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto --group-directories-first'
alias la='ls -al'
alias l='ls -l'
alias vi='vim'

alias xgz='tar xfvz'
alias xbz='tar xfvj'

alias grep='grep --color=always'

PS1='[\u@\h \W]\$ '

export EDITOR=vim
export TERM="screen-256color"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/bin/virtualenvwrapper.sh
