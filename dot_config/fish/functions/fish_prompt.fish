function __prompt_in_git_repo
    set -l dir $PWD
    while test "$dir" != /
        if test -e $dir/.git
            return 0
        end
        set dir (path dirname $dir)
    end
    return 1
end

function fish_prompt --description 'Write out the prompt'
    set -l last_pipestatus $pipestatus
    set -lx __fish_last_status $status # Export for __fish_print_pipestatus.

    set -l color_cwd $fish_color_cwd
    set -l suffix '$'
    if functions -q fish_is_root_user; and fish_is_root_user
        set suffix '#'
        if set -q fish_color_cwd_root
            set color_cwd $fish_color_cwd_root
        end
    end

    # PWD
    set_color $color_cwd
    echo -n (prompt_pwd)
    set_color normal

    # Git: branch or hash
    if __prompt_in_git_repo
        set -l branch (command git symbolic-ref --short HEAD 2>/dev/null; or command git rev-parse --short HEAD 2>/dev/null)
        if test -n "$branch"
            set_color yellow
            printf ' %s' $branch
            set_color normal
        end
    end
    echo -n ' '

    # pipestatus
    set -l status_color (set_color $fish_color_status)
    set -l statusb_color (set_color --bold $fish_color_status)
    set -l prompt_status (__fish_print_pipestatus "[" "]" "|" "$status_color" "$statusb_color" $last_pipestatus)
    echo -n $prompt_status
    set_color normal

    echo -n "$suffix "
end
