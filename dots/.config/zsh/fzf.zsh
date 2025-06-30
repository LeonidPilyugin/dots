function cd_fzf () {
    cd $(tree -dfi | fzf)
}
