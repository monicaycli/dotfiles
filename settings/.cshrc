# Caret
alias caret '~/caret/bin_macosx64/caret5'

# AFNI
set ahdir = `apsearch -afni_help_dir`
if ( -f $ahdir/all_progs.COMP ) then
   source $ahdir/all_progs.COMP
endif
if ( -f $HOME/.afni/help/all_progs.COMP ) then
   source $HOME/.afni/help/all_progs.COMP
endif

# DYLD
setenv DYLD_LIBRARY_PATH /opt/X11/lib/flat_namespace
setenv DYLD_FALLBACK_LIBRARY_PATH $HOME/abin

# niceifying AFNI interfaces
set filec
set autolist
set nobeep

# FINK
test -r /sw/bin/init.csh && source /sw/bin/init.csh

# Setting PATH for Python 2.7
# The orginal version is saved in .cshrc.pysave
# set path=(/Library/Frameworks/Python.framework/Versions/2.7/bin $path)

# Setting PATH for Python 3.5
# The orginal version is saved in .cshrc.pysave
# set path=(/Library/Frameworks/Python.framework/Versions/3.5/bin $path)

# set octave alias
alias octave /usr/local/octave/3.8.0/bin/octave-3.8.0

# Tim's awesome aliases
# Config
alias r "source ~/.cshrc" # reload
alias .cshrc "vim ~/.cshrc" # change config

# Open in...
alias s subl
alias f "open -a Finder ./"

# Navigation
alias cl "cd \!* ; ls"
alias .. "cd .." # step back 1 level
alias ... "cd ../.." # step back 2 levels
alias back "cd -" # back button
alias .ls "ls -d .*" # show hidden files
alias ls "ls -Gp"
alias ll "ls -lGp"

# Anti idiot
alias cp "cp -i"
alias mv "mv -i"
alias rm "rm -i"

# Activity dashboard
alias t "top -F -n 10 -R -s 2 -u -stats cpu,mem,pid,command,time"

# Git
alias gs "git status"
alias gr "git remote"
alias gl "git log --pretty=oneline --abbrev-commit -n 20"
alias ga "git add -A"
alias gap "git add -A -p"
alias gc "git commit"
alias amend "git commit --amend"
alias gcm "git commit -m"
alias recommit "git commit -C 'HEAD@{1}'"
alias gch--. "git checkout -- ." # reset local changes on branch
alias gpush "git push"
alias gp "gpush"
alias gpom "git push origin master"

# hub alias
eval "`hub alias -s`"

# powerline-shell
alias precmd 'set prompt="`powerline-shell --shell tcsh $?`"'
