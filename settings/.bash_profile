# =========================
#  EDITOR
# =========================
export VISUAL="vim"
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

# =========================
#  PATH
# =========================
# Misc.
export PATH=~/bin:$PATH
export PATH=/usr/local/lib:/usr/local/bin:/usr/local/go/bin:$PATH
export PATH=/usr/local/opt/sqlite/bin:$PATH
export PATH=/usr/local/opt/ncurses/bin:$PATH

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# =========================
#  DYLD
# =========================
export DYLD_LIBRARY_PATH=/opt/X11/lib/flat_namespace
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/abin:/lib:/usr/lib:/usr/bin/lib:/:/usr/local/opt/ruby/lib

# =========================
#  ANACONDA
# =========================
export PATH=//anaconda/bin:$PATH

# =========================
#  PYTHON
# =========================
# Setting PATH for Python 2.7
export PATH=/Library/Frameworks/Python.framework/Versions/2.7/bin:$PATH
# PYTHONPATH
#export PYTHONPATH=/sw/lib/qt4-mac/lib/python2.7/site-packages${PYTHONPATH}
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}

# =========================
#  RVM
# =========================
# Load RVM into a shell session *as a function*
 [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# =========================
#  SOURCE .bashrc
# =========================
source ~/.bashrc

