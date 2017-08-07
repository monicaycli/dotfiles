# =========================
#  EDITOR
# =========================
export EDITOR="vim"

# =========================
#  PATH
# =========================
# Misc.
export PATH=~/bin:$PATH
export PATH=/usr/local/lib:/usr/local/bin:/usr/local/go/bin:$PATH

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# PYTHONPATH
export PYTHONPATH=/sw/lib/qt4-mac/lib/python2.7/site-packages
export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}

# =========================
#  NEUROIMAGING
# =========================
# AFNI
export PATH=~/abin:$PATH
export DYLD_LIBRARY_PATH=/opt/X11/lib/flat_namespace
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/abin

# OPTSEQ2
export PATH=~/optseq2:$PATH

# CARET
export PATH=~/caret/bin_macosx64:$PATH

# =========================
#  ANACONDA
# =========================
export PATH=//anaconda/bin:$PATH

# =========================
#  EYE TRACKING
# =========================
export PATH=/Applications/Eyelink/EDF_Access_API/Example:$PATH

# =========================
#  SOURCE .bashrc
# =========================
source ~/.bashrc
