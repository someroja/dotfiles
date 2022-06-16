# Ensure that we have Fisher
if status is-interactive && not functions --query fisher
    curl -sL https://git.io/fisher | source && fisher update
end

# Configure direnv
if type --query direnv
    direnv hook fish | source
    set -g direnv_fish_mode eval_on_arrow
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g async_prompt_functions _pure_prompt_git
end
