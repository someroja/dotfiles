status is-login || exit

if not functions --query fisher
    curl -sL https://git.io/fisher | source && fisher update
end
