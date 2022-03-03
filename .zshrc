# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# Plugins
[ -f ~/.zplug/init.zsh ] && . ~/.zplug/init.zsh

zplug "zplug/zplug", hook-build:"zplug --self-manage"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure", use:pure.zsh, as:theme
zplug "lukechilds/zsh-nvm"
zplug "plugins/z", from:oh-my-zsh

if ! zplug check; then
    zplug install
fi

zplug load

# Managing dotfiles
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Other aliases
alias ~="cd ~"
alias ..="cd .."

# Sometimes you want to cd to active Finder window
function cdf () {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]
    then
        cd "$target"
        pwd
    else
        echo "No Finder window found" >&2
    fi
}

# Load local settings if we have them
[ -f ~/.zshrc.local ] && . ~/.zshrc.local
