# Print an optspec for argparse to handle cmd's options that are independent of any subcommand.
function __fish_wwa_global_optspecs
    string join \n h/help V/version
end

function __fish_wwa_needs_command
    # Figure out if the current invocation already has a command.
    set -l cmd (commandline -opc)
    set -e cmd[1]
    argparse -s (__fish_wwa_global_optspecs) -- $cmd 2>/dev/null
    or return
    if set -q argv[1]
        # Also print the command, so this can be used to figure out what it is.
        echo $argv[1]
        return 1
    end
    return 0
end

function __fish_wwa_using_subcommand
    set -l cmd (__fish_wwa_needs_command)
    test -z "$cmd"
    and return 1
    contains -- $cmd[1] $argv
end

complete -c wwa -n "__fish_wwa_needs_command" -s h -l help -d 'Print help'
complete -c wwa -n "__fish_wwa_needs_command" -s V -l version -d 'Print version'
complete -c wwa -n "__fish_wwa_needs_command" -f -a "analyze" -d 'Analyze damage change for each enemy'
complete -c wwa -n "__fish_wwa_needs_command" -f -a "breakpoints" -d 'List breakpoint atks'
complete -c wwa -n "__fish_wwa_needs_command" -f -a "completion" -d 'Generate shell completion script'
complete -c wwa -n "__fish_wwa_needs_command" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
complete -c wwa -n "__fish_wwa_using_subcommand analyze" -l atk -d 'Player attack power' -r
complete -c wwa -n "__fish_wwa_using_subcommand analyze" -l def -d 'Player defense power' -r
complete -c wwa -n "__fish_wwa_using_subcommand analyze" -l format -d 'Output format (implies --batch)' -r -f -a "plain\t''
json\t''
json-pretty\t''"
complete -c wwa -n "__fish_wwa_using_subcommand analyze" -l batch -d 'Force batch (non-interactive) mode'
complete -c wwa -n "__fish_wwa_using_subcommand analyze" -s h -l help -d 'Print help'
complete -c wwa -n "__fish_wwa_using_subcommand breakpoints" -l min -d 'Min atk to list' -r
complete -c wwa -n "__fish_wwa_using_subcommand breakpoints" -l max -d 'Max atk to list' -r
complete -c wwa -n "__fish_wwa_using_subcommand breakpoints" -l format -d 'Output format (implies --batch)' -r -f -a "plain\t''
json\t''
json-pretty\t''"
complete -c wwa -n "__fish_wwa_using_subcommand breakpoints" -l batch -d 'Force batch (non-interactive) mode'
complete -c wwa -n "__fish_wwa_using_subcommand breakpoints" -s h -l help -d 'Print help'
complete -c wwa -n "__fish_wwa_using_subcommand completion" -s h -l help -d 'Print help'
complete -c wwa -n "__fish_wwa_using_subcommand help; and not __fish_seen_subcommand_from analyze breakpoints completion help" -f -a "analyze" -d 'Analyze damage change for each enemy'
complete -c wwa -n "__fish_wwa_using_subcommand help; and not __fish_seen_subcommand_from analyze breakpoints completion help" -f -a "breakpoints" -d 'List breakpoint atks'
complete -c wwa -n "__fish_wwa_using_subcommand help; and not __fish_seen_subcommand_from analyze breakpoints completion help" -f -a "completion" -d 'Generate shell completion script'
complete -c wwa -n "__fish_wwa_using_subcommand help; and not __fish_seen_subcommand_from analyze breakpoints completion help" -f -a "help" -d 'Print this message or the help of the given subcommand(s)'
