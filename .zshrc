# Completion
fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")
autoload -Uz compinit && compinit
zstyle ":completion:*" menu select

# Prompt
autoload -Uz promptinit && promptinit
zstyle :prompt:pure:git:stash show yes
prompt pure

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

if [ -f $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]
then
    source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if command -v fzf &> /dev/null
then
    source ~/.fzf.zsh
fi

if command -v direnv &> /dev/null
then
    eval "$(direnv hook zsh)"
fi

if command -v fnm &> /dev/null
then
    eval "$(fnm env --use-on-cd)"
fi

# Aliases
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias df="dotfiles"
alias vim="nvim"

# Load local settings if we have them
[ -f ~/.zshrc.local ] && source ~/.zshrc.local
