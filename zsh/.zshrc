# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias zshconfig="nvim ~/.zshrc"

# Neovim Alias
alias vim="nvim"
alias v="nvim"

# EZA Alias
alias ls="eza --icons --sort=extension"

# Zoxide Alias
alias cd="z"

# Zellij Alias
alias zcode="zellij --layout ~/.config/zellij/code_layout.kdl"

# FNM (Node Manager)
eval "$(fnm env --use-on-cd)"

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source <(fzf --zsh)

# Zoxide
eval "$(zoxide init zsh)"

# Add by Poetry
export PATH="$HOME/.local/bin:$PATH"

# bun completions
[ -s "/Users/aezventure/.bun/_bun" ] && source "/Users/aezventure/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pyenv Configuration
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

PYTHONPATH=$HOME/.pyenv/shims/python
