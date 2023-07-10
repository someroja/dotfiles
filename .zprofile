if [ -f /opt/homebrew/bin/brew ]
then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]
then
    eval "$(/usr/local/bin/brew shellenv)"
fi

# Load local settings if we have them
[ -f ~/.zprofile.local ] && source ~/.zprofile.local
