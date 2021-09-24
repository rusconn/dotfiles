#!/bin/sh

cd "$(dirname "$0")" || exit

for dotfile in .??*
do
    [ "$dotfile" = ".git" ] && continue

    mv "$HOME/$dotfile" "$HOME/$dotfile.org"
    ln -snfv "$(pwd)/$dotfile" "$HOME/$dotfile"
done

echo "done"
