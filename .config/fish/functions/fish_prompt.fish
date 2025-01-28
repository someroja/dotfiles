function fish_prompt --description "Write out the prompt"
    set_color normal
    echo -n (prompt_pwd --dir-length=0)

    set_color purple
    echo -n (fish_vcs_prompt)

    set_color normal
    echo -n " > "
end
