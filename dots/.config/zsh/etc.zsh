function mcd ()
{
    mkdir "$1" && cd "$1"
}

if [[ -d "$HOME/.guix-profile" ]]; then
    path+=(
        "$HOME/.guix-profile/bin"
    )
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/.guix-profile/lib"
fi
