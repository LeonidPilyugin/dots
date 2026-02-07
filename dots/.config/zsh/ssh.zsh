function s () {
    ssh $1 "export NVIM_NO_COLORS=$NVIM_NO_COLORS && zsh -lid"
}
