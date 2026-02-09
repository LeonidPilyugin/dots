function s () {
    ssh $1 "export VIM_COLORS=$VIM_COLORS && $SHELL -lid"
}
