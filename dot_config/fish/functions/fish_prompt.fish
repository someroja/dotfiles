function fish_prompt --description 'Write out the prompt'
    echo -nse '\n' (set_color normal) (prompt_pwd --dir-length=0) (set_color brpurple) (fish_vcs_prompt) (set_color normal) '\n> '
end
