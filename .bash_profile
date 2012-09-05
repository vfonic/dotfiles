export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PATH="/usr/local/mysql/bin:/usr/local/pear/bin:$PATH"
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\w$(__git_ps1)]\$ '

# test -r /sw/bin/init.sh && . /sw/bin/init.sh
# rvm 1.9.3
export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=
export PATH="/opt/iOSOpenDev/bin:$PATH"
export PATH="/Volumes/MacintoshHD/Users/viktorfonic/Downloads/Spin/Src6.2.1:$PATH"
# Already have these two below
# export PATH=/opt/local/bin:$PATH
# export PATH=/opt/local/sbin:$PATH

##
# Your previous /Volumes/MacintoshHD/Users/viktorfonic/.bash_profile file was backed up as /Volumes/MacintoshHD/Users/viktorfonic/.bash_profile.macports-saved_2012-02-07_at_00:30:46
##

# MacPorts Installer addition on 2012-02-07_at_00:30:46: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

export MANPATH="/opt/local/share/man:$MANPATH"

. ~/.aliases
