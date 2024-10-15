# export PATH=$PATH
export PATH="/usr/local/bin:$PATH"

source ~/.customCommands.sh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="geoffgarside"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

HOMEBREW_PREFIX=$(brew --prefix)
export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# ---- Eza (better ls) -----

alias ls="eza --icons=always"

