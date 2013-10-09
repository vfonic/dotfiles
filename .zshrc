ZSH=$HOME/.oh-my-zsh

ZSH_THEME="gallois"

COMPLETION_WAITING_DOTS="true"

plugins=(git history rvm ruby gem rake rails3 bundler heroku macports osx sublime urltools)

source $ZSH/oh-my-zsh.sh
# disable autocorrect
# unsetopt correct

export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/apache-maven-3.0.4/bin:/opt/iOSOpenDev/bin:/usr/local/mysql/bin:/usr/local/pear/bin:/usr/local/rvm/gems/ruby-1.9.3-p286/bin:/usr/local/rvm/gems/ruby-1.9.3-p286@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p286/bin:/usr/local/rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/ImageMagick/bin:$PATH
source "/usr/local/rvm/scripts/rvm"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

. ~/.aliases
. ~/.git_aliases
