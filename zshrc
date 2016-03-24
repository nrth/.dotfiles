autoload -U compinit promptinit colors vcs_info
compinit
promptinit
colors

precmd() {
  vcs_info
}

setopt prompt_subst
zstyle ':vcs_info:git*' formats "[%b]"
RPROMPT='%{$fg[cyan]%}${vcs_info_msg_0_}%{$reset_color%}'

alias vi="vim"
alias ls="ls --color=auto --group-directories-first"
alias l="ls -l"
alias ll="ls -la"
alias grep="grep --color=auto"
alias mkdir="mkdir -p"

export EDITOR=vim

export PROJECT_HOME=$HOME/Devel
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

PROMPT="[%n% @%m%  %{$fg[yellow]%}%~%{$reset_color%}]\$ "

zstyle ':completion:*' menu select ## double tab enables arrow keys
zstyle ':completion:*' rehash true ## find new programs automaticaly

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
HISTFILE=~/.zsh_history
HISTSIZE=6400
SAVEHIST=6400

setopt auto_cd

source "$HOME/.vim/plugged/gruvbox/gruvbox_256palette.sh"
