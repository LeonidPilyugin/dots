#!/bin/bash

echo "Updating repo"

PATHES=(
    # vim
    .vim/colors
    .vim/ultisnips
    .vimrc
    # zsh
    .zshrc
    # git
    .gitconfig
    # bash
    .bashrc
)

for path in "${PATHES[@]}"
do
    echo "Copying \"~/$path\""
    cp -a ~/$path ./dots/
done

git add --all
echo -n "Enter comment: "
read commit_comment
git commit -m "$commit_comment"

git push

echo "Done"

