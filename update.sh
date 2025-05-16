#!/bin/bash

echo "Updating repo"

PATHES=(
    .config/zsh
    .config/nvim
    .zshrc
    .gitconfig
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

