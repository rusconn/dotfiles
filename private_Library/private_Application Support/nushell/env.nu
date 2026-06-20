$env.PROMPT_COMMAND = {||
    mut strs = ["", (pwd | path basename)]
    if ((".git" | path exists) and not (which git | is-empty)) {
        $strs = ($strs | append $"(ansi yellow)(git branch --show-current)(ansi reset)")
    }
    if ($env.LAST_EXIT_CODE != 0) {
        $strs = ($strs | append $"(ansi red_bold)[($env.LAST_EXIT_CODE)](ansi reset)")
    }
    $strs | str join " "
}

$env.PROMPT_COMMAND_RIGHT = {||
    $"(ansi green_bold)󰥔 (date now | format date "%H:%M:%S")(ansi reset)"
}
