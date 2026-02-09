set runtimepath^=~/.config/vim/plugins/how-much/

let g:HowMuch_scale=5
vnoremap <leader>= :call HowMuch#HowMuch(0,0,0,"auto")<cr>
