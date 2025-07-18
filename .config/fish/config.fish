if type --query nvim
    set -gx EDITOR nvim
else
    set -gx EDITOR vim
end

if type --query lazygit
    abbr --add lg lazygit
end

if type --query fnm
    fnm env --use-on-cd | source
end

if test -d $HOME/.bun
    set -gx BUN_INSTALL $HOME/.bun
    fish_add_path $BUN_INSTALL/bin
end
