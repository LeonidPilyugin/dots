if [ -d "$CONFIG_ROOT/local" ]; then
    source "$CONFIG_ROOT/local/init.zsh"
fi

source "$CONFIG_ROOT/alias/init.zsh"
source "$CONFIG_ROOT/ohmyzsh/init.zsh"
source "$CONFIG_ROOT/editor.zsh"
source "$CONFIG_ROOT/mmd.zsh"
source "$CONFIG_ROOT/locale.zsh"
source "$CONFIG_ROOT/net.zsh"
source "$CONFIG_ROOT/set.zsh"
source "$CONFIG_ROOT/fzf.zsh"
source "$CONFIG_ROOT/bindkey.zsh"
source "$CONFIG_ROOT/etc.zsh"
source "$CONFIG_ROOT/sage.zsh"
source "$CONFIG_ROOT/regex.zsh"
