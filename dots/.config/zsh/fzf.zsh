function cd_fzf () {
    cd $(tree -dfi | fzf)
}

bindkey -s "^N" "cd_fzf\n"

bindkey -r "^[c"
bindkey -r "^R"
bindkey -r "^T"
