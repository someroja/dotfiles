# Path
# Add /usr/local/sbin in case some homebrew formulae puts executables there
typeset -U path
path=(/usr/local/sbin $path)

# Set locale to a nice mishmash of English and Finnish
export LANG="en_US.UTF-8"
export LC_CTYPE="fi_FI.UTF-8"
export LC_MESSAGES="en_US.UTF-8"
export LC_MONETARY="fi_FI.UTF-8"
export LC_NUMERIC="fi_FI.UTF-8"
export LC_TIME="fi_FI.UTF-8"
export LC_COLLATE="C"

# zsh-pure
export PURE_PROMPT_SYMBOL="$"

# zsh-nvm
export NVM_DIR="$HOME/.nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true

# Load local settings if we have them
[ -f ~/.zshenv.local ] && . ~/.zshenv.local
