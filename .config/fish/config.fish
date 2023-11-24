if type --query kak
    set -gx EDITOR kak
    abbr --add k kak
else
    set -gx EDITOR vim
end

if type --query fnm
    fnm env --use-on-cd | source
end

if type --query lazygit
    abbr --add lg lazygit
end

abbr --add df dotfiles
