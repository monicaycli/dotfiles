# =========================
#  QUICK CD
# =========================
alias vimwiki="cd $HOME/vimwiki"
export GD="$HOME/Google-Drive"
export FS="/Volumes/GoogleDrive/My\ Drive"
alias gd="cd $GD"
alias fs="cd $FS"
alias dot="cd $GD/Github/dotfiles"
alias bib="cd $GD/Library"
alias subcat="cd $GD/Manuscripts/2017_Subcat"
alias ge1="cd $GD/Manuscripts/2017_General-Exam_1"
alias ge2="cd $GD/Manuscripts/2017_General-Exam_2"
alias GE1="tmux a -t GE1"

# =========================
#  AFNI
# =========================
# CARET
alias caret="~/caret/bin_macosx64/caret5"

# =========================
#  EDITOR
# =========================
alias vim="nvim"

# =========================
#  OCTAVE
# =========================
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0"

# =========================
#  PYTHON
# =========================
#  conda
# -------------------------
alias sa="source activate"
alias sd="source deactivate"
#  jupyter
# -------------------------
alias jn="jupyter notebook"

# =========================
#  shell
# =========================
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

# =========================
#  MISC.
# =========================
# check weather
function weather() { curl wttr.in/"$1"?m; }

# Activity dashboard
alias t="top -F -n 10 -R -s 2 -u -stats cpu,mem,pid,command,time"

# powerline-shell
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# vim
alias vimrc="vim ~/.vimrc"
