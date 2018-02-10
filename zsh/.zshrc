# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jonah/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="bullet-train"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.zsh_themes

#
# ZSH Plugins
#
plugins=(git npm osx z)

source $ZSH/oh-my-zsh.sh

#
# OWN CONFIGURATIONS
#

#
# ALIASES
#
alias p='cd ~/projects'
alias w='cd ~/create'
alias wstart='homestead up && cd ~/create'

#
# THEME CUSTOMISATION
#
SPACESHIP_CHAR_SYMBOL="💨  " # Changing PS1 to show this emoji

SPACESHIP_TIME_SHOW=true
SPACESHIP_NODE_DEFAULT_VERSION='v9.5.0'
SPACESHIP_PHP_SHOW=false
SPACESHIP_PACKAGE_SHOW=false

SPACESHIP_BATTERY_THRESHOLD=15

#
# LARAVEL HOMESTEAD GLOBAL FUNCTION
#
function homestead() {
	( cd ~/Homestead && vagrant $* )
}

#
# GPG TTY CONFIG
#
export GPG_TTY=$(tty)

#
# NATIVESCRIPT BLOCK
#
export ANDROID_HOME=/usr/local/share/android-sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH="/usr/local/bin:$PATH"

###-tns-completion-start-###
if [ -f /Users/jonah/.tnsrc ]; then 
    source /Users/jonah/.tnsrc 
fi
###-tns-completion-end-###
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

cowsay "Hey Jonah, how you doin'?" -t | lolcat