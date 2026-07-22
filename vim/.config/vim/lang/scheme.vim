autocmd BufNewFile,BufRead *.scm set filetype=scheme
autocmd BufEnter *.scheme inoremap ( ()<Esc>ha
