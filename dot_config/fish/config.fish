set -gx EDITOR vim

if type --query fnm
    fnm env --use-on-cd | source
end

if type --query lazygit
    abbr --add lg lazygit
end
