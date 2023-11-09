if type --query kak
    set -gx EDITOR kak
else
    set -gx EDITOR vim
end

if type --query fnm
    fnm env --use-on-cd | source
end

abbr --add df dotfiles
