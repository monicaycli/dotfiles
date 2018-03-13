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

# OPTSEQ2
export PATH=~/optseq2:$PATH

# CARET
export PATH=~/caret/bin_macosx64:$PATH

# FREESURFER
export FREESURFER_HOME=/Applications/freesurfer
export FREESURFER_USER_HOME=/Users/mli/freesurfer
export SUBJECTS_DIR=$FREESURFER_USER_HOME/subjects
export FUNCTIONALS_DIR=$FREESURFER_USER_HOME/sessions
export TUTORIAL_DATA=/Users/mli/HPC/fs_tutorial_data
source $FREESURFER_HOME/FreeSurferEnv.sh

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

# Setting PATH for Python 2.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# FSL Setup
FSLDIR=/usr/local/fsl
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh

