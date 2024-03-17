export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="common"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

eval "$(zoxide init zsh)"

# Aliases
alias l="ls -la"
alias hx="helix"
alias cd="z"

# Load local system config
if [ -f '$HOME/.zshrc.local' ]; then source '$HOME/.zshrc.local'; fi
