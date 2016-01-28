autoload -U compinit promptinit colors
colors
compinit
promptinit
prompt walters

alias vi="vim"
alias ls="ls --color=auto --group-directories-first"
alias l="ls -l"
alias grep="grep --color=auto"

export EDITOR=vim

export PROJECT_HOME=$HOME/Devel
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

setopt HIST_IGNORE_DUPS

PROMPT="[%n% @%m%  %{$fg[green]%}%~%{$reset_color%}]\$ "
RPROMPT=""
