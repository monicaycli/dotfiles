export EDITOR='vim'
alias s='subl'

alias .ls='ls -d .*'
alias ls='ls -Gp'

alias ..='cl ..'
alias ...='cl ../..'
alias back='cd -'
function cl() { cd "$@" && ls; }
function md() { mkdir -p "$@" && cd "$_"; }

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias reload='source $HOME/.bash_profile'
alias r='reload'
alias c='clear'

alias git=hub

function weather() { curl wttr.in/"$@"; }
