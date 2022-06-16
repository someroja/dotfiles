# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# Configure direnv
eval "$(direnv hook zsh)"

# Load local settings if we have them
[ -f ~/.zshrc.local ] && . ~/.zshrc.local
