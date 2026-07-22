autocmd BufNewFile,BufRead *.dox set filetype=doxygen
autocmd FileType doxygen setlocal tw=80
autocmd FileType doxygen :setlocal cc=80
