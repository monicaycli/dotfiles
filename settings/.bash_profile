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

# =========================
#  NEUROIMAGING
# =========================
# AFNI
export PATH=~/abin:$PATH

# OPTSEQ2
export PATH=~/optseq2:$PATH

# CARET
export PATH=~/caret/bin_macosx64:$PATH

# FREESURFER
export FREESURFER_HOME=/Applications/freesurfer
export FREESURFER_USER_HOME=$HOME/freesurfer
export SUBJECTS_DIR=$FREESURFER_USER_HOME/subjects
export FUNCTIONALS_DIR=$FREESURFER_USER_HOME/sessions
export TUTORIAL_DATA=/Users/mli/HPC/fs_tutorial_data
export FS_FREESURFERENV_NO_OUTPUT=TRUE
source $FREESURFER_HOME/FreeSurferEnv.sh

# FSL Setup
FSLDIR=/usr/local/fsl
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

# =========================
#  ANACONDA
# =========================
export PATH=//anaconda/bin:$PATH

# =========================
#  EYE TRACKING
# =========================
export PATH=/Applications/Eyelink/EDF_Access_API/Example:$PATH

# =========================
#  PYTHON
# =========================
# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
# PYTHONPATH
#export PYTHONPATH=/sw/lib/qt4-mac/lib/python2.7/site-packages${PYTHONPATH}
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:${PYTHONPATH}

# =========================
#  RVM
# =========================
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# =========================
#  SOURCE .bashrc
# =========================
source ~/.bashrc

