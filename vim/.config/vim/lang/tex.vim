" Always latex
let g:tex_flavor = "latex"

filetype plugin indent on
syntax enable

autocmd FileType tex setlocal tw=80
autocmd FileType tex setlocal cc=80
autocmd FileType tex setlocal tabstop=2
autocmd FileType tex setlocal softtabstop=2
autocmd FileType tex setlocal shiftwidth=2
autocmd FileType tex setlocal expandtab

