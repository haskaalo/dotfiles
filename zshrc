export ZSH=/home/$USER/.oh-my-zsh
source ~/.zsh_private

ZSH_THEME="customtheme"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias vi='nvim'
alias vim='nvim'

[[ -s "/home/trev/.gvm/scripts/gvm" ]] && source "/home/trev/.gvm/scripts/gvm"
