export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois"

COMPLETION_WAITING_DOTS="true"

plugins=(brew bundler gem git gitfast heroku history rails rake ruby rvm sublime)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.rvm/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

# export LC_ALL=en_US.UTF-8  
# export LANG=en_US.UTF-8

. ~/.aliases
. ~/.git_aliases
