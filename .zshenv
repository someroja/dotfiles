if command -v nvim &> /dev/null
then
    export EDITOR=nvim
else
    export EDITOR=vim
fi

# Load local settings if we have them
[ -f ~/.zshenv.local ] && source ~/.zshenv.local
