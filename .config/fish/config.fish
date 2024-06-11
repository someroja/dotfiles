if test -e /opt/local/bin/port
    fish_add_path /opt/local/bin /opt/local/sbin
end

set -gx EDITOR vim

if type --query fnm
    fnm env --use-on-cd | source
end

if type --query lazygit
    abbr --add lg lazygit
end

abbr --add df dotfiles
