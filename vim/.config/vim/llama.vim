let g:llama_config = {
    \ 'endpoint_fim': 'http://localhost:8080/infill'
    \ }

" Prevent automatic suggestion
imap <C-Space> <Plug>(llama-complete)
