if status is-login
    # volta
    set -gx VOLTA_HOME "$HOME/.volta"
    set -gx PATH "$VOLTA_HOME/bin" $PATH
    set VOLTA_FEATURE_PNPM 1
end
