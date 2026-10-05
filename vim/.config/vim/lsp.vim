" Async complete
let g:asyncomplete_auto_popup = 1
let g:lsp_diagnostics_echo_cursor = 1

" Key mappings
nnoremap <silent> gd <plug>(lsp-definition)
nnoremap <silent> gr <plug>(lsp-references)
nnoremap <silent> gi <plug>(lsp-implementation)
nnoremap <silent> gt <plug>(lsp-type-definition)
nnoremap <Leader>a <Plug>(lsp-code-action)

nnoremap <silent> K <plug>(lsp-hover)

nnoremap <silent> <F2> <plug>(lsp-rename)

nnoremap <silent> [d <plug>(lsp-previous-diagnostic)
nnoremap <silent> ]d <plug>(lsp-next-diagnostic)

" C, C++
if executable('clangd')
    augroup LspClangd
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'clangd',
            \ 'cmd': {server_info->['clangd', '--compile-commands-dir=build']},
            \ 'allowlist': ['c', 'cpp'],
            \ })
    augroup END
endif

" Python
if executable('pyright-langserver')
    augroup LspPyright
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'pyright',
            \ 'cmd': {server_info->['pyright-langserver', '--stdio']},
            \ 'allowlist': ['python'],
            \ })
    augroup END
endif

" Shell
if executable('bash-language-server')
    augroup LspBash
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'bash-language-server',
            \ 'cmd': {-> ['bash-language-server', 'start']},
            \ 'allowlist': ['sh'],
            \ })
    augroup END
endif

" Vala
if executable('vala-language-server')
    augroup LspVala
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'vala-language-server',
            \ 'cmd': {-> ['vala-language-server']},
            \ 'allowlist': ['vala'],
            \ })
    augroup END
endif

" LaTeX
if executable('texlab')
    augroup LspTexlab
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'texlab',
            \ 'cmd': {-> ['texlab']},
            \ 'allowlist': ['tex', 'plaintex', 'bib'],
            \ })
    augroup END
endif

" JSON
if executable('vscode-json-language-server')
    augroup LspJson
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'vscode-json-language-server',
            \ 'cmd': {-> ['vscode-json-language-server', '--stdio']},
            \ 'allowlist': ['json', 'jsonc'],
            \ })
    augroup END
endif

" CMake
if executable('cmake-language-server')
    augroup LspCmake
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'cmake-language-server',
            \ 'cmd': {-> ['cmake-language-server']},
            \ 'allowlist': ['cmake'],
            \ })
    augroup END
endif

" Rust
if executable('rust-analyzer')
    augroup LspRust
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
            \ 'name': 'rust-analyzer',
            \ 'cmd': {-> ['rust-analyzer']},
            \ 'allowlist': ['rust'],
            \ 'initialization_options': {
            \     'check': {
            \         'command': 'clippy',
            \     },
            \ },
            \ })
    augroup END
endif
