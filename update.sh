#!/bin/bash

echo "Updating repo"

PATHES=(
    # vim
    .vim/templates
    .vim/colors
    .vim/ultisnips
    .vim/.ycm_extra_conf.py
    .vimrc
    # zsh
    .zshrc
    # git
    .gitconfig
    # neovim
    .config/nvim
)

rm -rf dots
mkdir dots

for path in "${PATHES[@]}"
do
    echo "Copying \"~/$path\""
    mkdir -p $(dirname ./dots/$path)
    cp -a ~/$path ./dots/$path
done

git add --all
echo -n "Enter comment: "
read commit_comment
git commit -m "$commit_comment"

git push

echo "Done"

