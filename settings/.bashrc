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

# =========================
#  GIT
# =========================
alias git=hub

# =========================
#  MISC.
# =========================
function weather() { curl wttr.in/"$@"; }


