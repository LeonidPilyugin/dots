" Hishlight syntax
syntax on

" Hishlight search
set hlsearch

" Set line numbering
set number
set relativenumber

" Indent after line break
set autoindent

" Set tabulation sizes
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4

" Set coloccolumn
autocmd FileType c :setlocal cc=120
autocmd FileType cpp :setlocal cc=120
autocmd FileType vala :setlocal cc=120
autocmd FileType python :setlocal cc=80
autocmd FileType tex :setlocal cc=80
autocmd FileType plaintex :setlocal cc=80
autocmd FileType json :setlocal cc=80
autocmd FileType yaml :setlocal cc=80
autocmd FileType toml :setlocal cc=80
autocmd FileType sh :setlocal cc=80
autocmd FileType zsh :setlocal cc=80
autocmd FileType lammps :setlocal cc=80

" Always latex
let g:tex_flavor = "latex"

" Allow local config
set exrc
set secure

" Format settings
set fo=tcqjro

" Trim whitespaces
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun
autocmd BufWritePre * if !&binary && &ft !=# 'mail'
                   \|   call TrimWhitespace()
                   \| endif

" Set leader
let mapleader = "\<space>"

" Map ESC
inoremap <C-C> <Esc>
vnoremap <C-C> <Esc>
set timeoutlen=300

" Remove search highlight
nnoremap <leader>i :noh<cr>

" Paste last yanced line
nnoremap <leader>p "0p
nnoremap <leader>P "0P
vnoremap <leader>p "0p

" Exit keymaps
nnoremap <leader>s :w<cr>
nnoremap <leader>q :qa<cr>

" Window navigation
nnoremap <leader>l <C-w>l
nnoremap <leader>k <C-w>k
nnoremap <leader>j <C-w>j
nnoremap <leader>h <C-w>h

inoremap { {<CR>}<up><end><CR>
