# OPTSEQ2
export PATH="~/optseq2:$PATH"

# CARET
export PATH="~/caret/bin_macosx64:$PATH"
alias caret='~/caret/bin_macosx64/caret5'

# AFNI
export PATH="~/abin:$PATH"
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/abin

# ANACONDA
export PATH="//anaconda/bin:$PATH"

# MacPorts 
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# FINK
test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Misc.
export PATH=/usr/local/lib:/usr/local/bin:$PATH

# Source .bashrc
source ~/.bashrc