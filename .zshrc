# ZSH setup
export ZSH=/Users/jonahmeijers/.oh-my-zsh
ZSH_THEME="minimal"
plugins=(
  git
  npm
  z
)
source $ZSH/oh-my-zsh.sh

# Cool aliasses 'n shit
alias dfstop='docker kill $(docker ps -q)'
alias dstop='docker stop $(docker ps -a -q)'
alias bs='browser-sync start --server --files .'

# Random crap
if command -v brew >/dev/null 2>&1; then
	# Load rupa's z if installed
	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
# added by travis gem
[ -f /Users/jonahmeijers/.travis/travis.sh ] && source /Users/jonahmeijers/.travis/travis.sh

# Android variables for React native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
