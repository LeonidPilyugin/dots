set runtimepath^=~/.config/vim/plugins/vim-fern/

nnoremap <Leader>e :Fern -drawer -toggle .<CR>

function! s:define_fern_mappings() abort
    setlocal norelativenumber
    setlocal nonumber
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal nowrap

    nmap <buffer> <CR> <Plug>(fern-action-open)
    nmap <buffer> i <Plug>(fern-action-open:split)
    nmap <buffer> s <Plug>(fern-action-open:vsplit)
    nmap <buffer> ;r <Plug>(fern-action-reload)
    nmap <buffer> ;d <Plug>(fern-action-remove)
    nmap <buffer> ;m <Plug>(fern-action-move)
    nmap <buffer> ;n <Plug>(fern-action-new-path)
    nmap <buffer> u <Plug>(fern-action-leave)
    nmap <buffer> e <Plug>(fern-action-enter)
    nmap <buffer> p <Plug>(fern-action-preview)
    nmap <buffer> cd <Plug>(fern-action-cd)
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:define_fern_mappings()
augroup END
