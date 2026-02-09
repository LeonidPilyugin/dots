set runtimepath^=~/.config/vim/

if $TERM == "linux" || $VIM_COLORS == "NOIR"
    colorscheme noir
elseif $VIM_COLORS == "KAWAII"
    colorscheme kawaii
endif
