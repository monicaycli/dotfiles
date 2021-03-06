# =========================
#  EDITOR
# =========================
export VISUAL="nvim"
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
export PATH=$HOME/sshfs:$PATH

# MacPorts
export PATH=/opt/local/bin:/opt/local/sbin:$PATH

# show path at title
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"

# =========================
#  DYLD
# =========================
export DYLD_LIBRARY_PATH=/opt/X11/lib/flat_namespace
export DYLD_FALLBACK_LIBRARY_PATH=$HOME/abin:/lib:/usr/lib:/usr/bin/lib:/:/usr/local/opt/ruby/lib

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
# BASH-COMPLETION
# =========================
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# =========================
#  SOURCE .bashrc
# =========================
source ~/.bashrc

# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/monicaycli/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/monicaycli/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/monicaycli/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/monicaycli/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
