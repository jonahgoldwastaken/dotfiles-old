# ZSH setup
export ZSH=/Users/jonahmeijers/.oh-my-zsh
ZSH_THEME="minimal"
plugins=(
  osx
  git
  npm
  yarn
  z
  zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Cool aliasses
alias p="cd /Users/jonahmeijers/programmeren"

# brew initialisation
if command -v brew >/dev/null 2>&1; then
  # Load rupa's z if installed
  [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
fi
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi
export PATH="/usr/local/sbin:$PATH"
