setenv EDITOR nano

set path = ( $path ~/abin )
set path = ( $path ~/caret/bin_macosx64 ) 
set path = ( $path ~/optseq2)

setenv DYLD_LIBRARY_PATH /opt/X11/lib/flat_namespace
setenv DYLD_FALLBACK_LIBRARY_PATH ~/abin 

set ahdir = `apsearch -afni_help_dir`
if ( -f $ahdir/all_progs.COMP ) then
   source $ahdir/all_progs.COMP
endif

alias fmri 'cd ~/Documents/fMRI_data/'
alias matlab '/Applications/MATLAB_R2011b.app/bin/matlab'
alias spss 'sudo /Applications/SPSS20/SPSSStatistics.app/Contents/MacOS/stats'
alias caret '~/caret/bin_macosx64/caret5'
setenv PYTHONPATH /sw/lib/qt4-mac/lib/python2.7/site-packages
