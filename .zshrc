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
alias ls="exa"
alias l="ls -lah --icons=auto --git --total-size"
alias tree="l --tree"
alias hx="helix"
alias cd="z"
alias pyclean='find . | rg "__pycache__|\.mypy_cache|\.pytest_cache" | xargs rm -rf' # removes all __pycache__, .mypy_cache and .pytest_cache dirs in current dorectory

# Load local system config
if [ -f '$HOME/.zshrc.local' ]; then source '$HOME/.zshrc.local'; fi
