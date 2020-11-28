# =========================
#  EDITOR
# =========================
alias vim="nvim"
# vim
alias vimrc="vim ~/.vimrc"

## gettext
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"

# =========================
#  shell
# =========================
# powerline-shell
# -------------------------
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

#  ls
# -------------------------
alias .ls="ls -d .*" # show hidden files
alias ls="ls -Gp"
alias ll="ls -lGp"

#  cd
# -------------------------
alias ..="cd .." # step back 1 level
alias ...="cd ../.." # step back 2 levels
alias back="cd -" # back button
function cl() { cd "$1" && ls; }
function md() { mkdir -p "$1" && cd "$1" || exit; }

#  idiot-proofing overwrites
# -------------------------
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

#  CLI management
# -------------------------
alias reload="source $HOME/.bash_profile"
alias c="clear"
alias r="reload"
alias .bashrc="vim $HOME/.bashrc"
alias ls="exa --icons -laF"

# =========================
#  GIT
# =========================
alias git=hub
alias gs="git status"
alias gr="git remote"
alias gl="git log --pretty=oneline --abbrev-commit -n 20"
alias ga="git add -A"
alias gap="git add -A -p"
alias gc="git commit"
alias amend="git commit --amend"
alias gcm="git commit -m"
alias recommit="git commit -C 'HEAD@{1}'"
alias gch--.="git checkout -- ." # reset local changes on branch
alias gpush="git push"
alias gp="gpush"
alias gpom="git push origin master"
alias gf="git fetch origin"
alias gfs="gf && gs"
# git-summary
alias git-summary="/Users/mli/Google-Drive/Github/term_tools/git-summary/git-summary"
alias gsl="git-summary -l"
alias gsd="git-summary -d"
# git-completion.bash
source ~/.git-completion.bash

# =========================
#  MISC.
# =========================
# check weather
function weather() { curl wttr.in/"$1"?m; }

# Activity dashboard
alias top="vtop -t gooey"
alias oldtop="/usr/bin/top"
alias t="/usr/bin/top -F -n 10 -R -s 2 -u -stats cpu,mem,pid,command,time"

# =========================
#  THEFUCK
# =========================
eval $(thefuck --alias)

# =========================
#  HISTORY
# =========================
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTCONTROL="ignorespace:ignoredups"
export HISTIGNORE="history"

## =========================
##  NODE
## =========================
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
