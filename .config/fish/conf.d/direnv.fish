status is-interactive || exit

if type --query direnv
    direnv hook fish | source
    set -g direnv_fish_mode eval_on_arrow
else
    echo "direnv not installed!"
end
