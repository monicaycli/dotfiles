# =========================
#  AFNI
# =========================
ahdir=`apsearch -afni_help_dir`
if [ -f "$ahdir/all_progs.COMP.bash" ]
then
   . $ahdir/all_progs.COMP.bash
fi
# FINK
test -r /sw/bin/init.sh && . /sw/bin/init.sh
# DYLD
export DYLD_LIBRARY_PATH=/opt/X11/lib/flat_namespace
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/abin:/lib:/usr/lib:/usr/bin/lib:/
# CARET
alias caret='~/caret/bin_macosx64/caret5'

# =========================
#  EDITOR
# =========================
alias s="subl"

# =========================
#  OCTAVE
# =========================
alias octave="/usr/local/octave/3.8.0/bin/octave-3.8.0"

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
function cl() { cd "$@" && ls; }
function md() { mkdir -p "$@" && cd "$_"; }

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
function weather() { curl wttr.in/"$@"?m; }

# Activity dashboard
alias t="top -F -n 10 -R -s 2 -u -stats cpu,mem,pid,command,time"

# powerline-shell
function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
