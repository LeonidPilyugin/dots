if type nvim > /dev/null; then
    export EDITOR=nvim
elif type vim > /dev/null; then
    export EDITOR=vim
fi

export NVIM_NO_COLORS=yes
