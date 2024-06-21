# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_DISABLE_COMPFIX="true"

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-syntax-highlighting)

FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
source $ZSH/oh-my-zsh.sh

# PATH exports
export PATH=$PATH:$HOME/bin
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
export PATH="$PATH:/Applications/Docker.app/Contents/Resources/bin/"
export PATH="$PATH:/Users/maksymlyskov/.local/bin"
export PATH="/usr/local/opt/jpeg/bin:$PATH"
export PATH=$PATH:~/.config/scripts

bindkey -s ^f "tmux-sessionizer.sh\n"
# Completions
eval "$(fzf --zsh)"

# Aliases
alias c='clear'
alias e='exit'
alias gs='git status'
alias gp='git push'
alias gcm='git checkout main'
alias gc='git checkout'
alias lg='lazygit'
alias dot='cd ~/.config'
alias ld='lazydocker'
alias ls='lsd'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /Users/admin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

