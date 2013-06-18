# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gallois"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git history macports osx sublime)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/apache-maven-3.0.4/bin:/opt/iOSOpenDev/bin:/usr/local/mysql/bin:/usr/local/pear/bin:/usr/local/rvm/gems/ruby-1.9.3-p286/bin:/usr/local/rvm/gems/ruby-1.9.3-p286@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p286/bin:/usr/local/rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/ImageMagick/bin:$PATH
source "/usr/local/rvm/scripts/rvm"

export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

. ~/.aliases
. ~/.git_aliases
