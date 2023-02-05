status is-login || exit

if not functions --query fisher
    curl -sL https://git.io/fisher | source && fisher update
end

if type --query direnv
    direnv hook fish | source
    set -g direnv_fish_mode eval_on_arrow
else
    echo "direnv not installed!"
end

if type --query fnm
    fnm env | source
else
    echo "fnm not installed!"
end

set -gx EDITOR nvim

set -g hydro_multiline true
