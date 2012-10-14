export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export PATH="/usr/local/mysql/bin:/usr/local/pear/bin:$PATH"
source /usr/local/git/contrib/completion/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='[\w$(__git_ps1)]\$ '

export iOSOpenDevPath=/opt/iOSOpenDev
export iOSOpenDevDevice=
export PATH="/opt/iOSOpenDev/bin:$PATH"

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

export MANPATH="/opt/local/share/man:$MANPATH"

. ~/.aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm" # Load RVM into a shell session *as a function*
