# Completion
autoload -Uz compinit && compinit -u
zstyle ":completion:*" menu select

# Prompt
autoload -Uz promptinit && promptinit

# History
export SAVEHIST=10000
export HISTSIZE=50000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

# Options
setopt AUTO_CD
setopt NO_BEEP
setopt EMACS

if command -v fnm &> /dev/null
then
    eval "$(fnm env --use-on-cd)"
fi

# Aliases
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias df="dotfiles"

# Load local settings if we have them
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
