# Path
typeset -U path
# Add /usr/local/sbin in case some homebrew formulae puts executables there
path+=(/usr/local/sbin)

# Set locale to a nice mishmash of English and Finnish
export LANG="en_US.UTF-8"
export LC_CTYPE="fi_FI.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="fi_FI.UTF-8"
export LC_NUMERIC="fi_FI.UTF-8"
export LC_TIME="fi_FI.UTF-8"
export LC_COLLATE="C"

# Load local settings if we have them
[ -f ~/.zshenv.local ] && . ~/.zshenv.local
