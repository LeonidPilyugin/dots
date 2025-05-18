if [ -d "$CONFIG_ROOT/local" ]; then
    source "$CONFIG_ROOT/local/init.zsh"
fi

source "$CONFIG_ROOT/alias/init.zsh"
source "$CONFIG_ROOT/ohmyzsh/init.zsh"
source "$CONFIG_ROOT/editor.zsh"
source "$CONFIG_ROOT/mmd.zsh"
source "$CONFIG_ROOT/locale.zsh"
