if [[ -v ZSH && -a "$ZSH/oh-my-zsh.sh" ]]; then
    source "$CONFIG_ROOT/ohmyzsh/colors.zsh"
    source "$CONFIG_ROOT/ohmyzsh/plugins.zsh"

    source $ZSH/oh-my-zsh.sh
else
    echo "oh-my-zsh is not found!"
fi
