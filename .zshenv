if command -v kak &> /dev/null
then
    export EDITOR=kak
else
    export EDITOR=vim
fi

# Load local settings if we have them
[ -f ~/.zshenv.local ] && source ~/.zshenv.local
