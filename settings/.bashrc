# =========================
#  PATH
# =========================
export PATH=~/bin:$PATH

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# Misc.
export PATH=/usr/local/lib:/usr/local/bin:$PATH

#PYTHONPATH
export PYTHONPATH=/sw/lib/qt4-mac/lib/python2.7/site-packages
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}

# =========================
#  AFNI
# =========================
export PATH=~/abin:$PATH
ahdir=`apsearch -afni_help_dir`
if [ -f "$ahdir/all_progs.COMP.bash" ]
then
   . $ahdir/all_progs.COMP.bash
fi
export DYLD_LIBRARY_PATH=/opt/X11/lib/flat_namespace

# FINK
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# OPTSEQ2
export PATH="~/optseq2:$PATH"

# CARET
export PATH="~/caret/bin_macosx64:$PATH"
alias caret='~/caret/bin_macosx64/caret5'
  
# =========================
#  ANACONDA
# =========================
export PATH="//anaconda/bin:$PATH"

# =========================
#  EDITORS
# =========================
export EDITOR="vim"
alias s="subl"

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


