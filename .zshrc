# Prompt
autoload -Uz promptinit && promptinit
prompt pure

# Completion
autoload -Uz compinit && compinit
zstyle ":completion:*" menu select

# Changing directories
setopt AUTO_CD

# History
export SAVEHIST=10000
export HISTSIZE=50000
export HISTFILE=~/.zsh_history
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS

if [ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
then
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
    echo "zsh-autosuggestions not installed!"
fi

if command -v fzf &> /dev/null
then
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
else
    echo "fzf not installed!"
fi

if command -v direnv &> /dev/null
then
    eval "$(direnv hook zsh)"
else
    echo "direnv not installed!"
fi

if command -v fnm &> /dev/null
then
    eval "$(fnm env --use-on-cd)"
else
    echo "fnm not installed!"
fi

# Aliases
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias vim="nvim"

# Load local settings if we have them
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
