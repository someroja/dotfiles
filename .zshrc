# Completion
autoload -Uz compinit && compinit
zstyle ":completion:*" menu select

# Configure direnv
if command -v direnv &> /dev/null
then
    eval "$(direnv hook zsh)"
fi

# Load local settings if we have them
[ -f ~/.zshrc.local ] && . ~/.zshrc.local
