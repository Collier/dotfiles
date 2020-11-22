function fish_prompt --description 'Write out the prompt'
    set -l last_status $status
    # New Line
    echo;

    # User
    set_color $fish_color_user
    echo -n $USER
    set_color normal

    echo -n '@'

    # Host
    set_color $fish_color_host
    echo -n (prompt_hostname)
    set_color normal

    echo -n ' '

    # PWD
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal

    fish_git_prompt
    echo

    echo -n 'λ '
    set_color normal
end
