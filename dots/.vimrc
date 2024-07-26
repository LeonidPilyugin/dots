set nocompatible
filetype off

if $TERM == 'linux'
    colorscheme kawaii8
    au VimLeave * :!clear
    let g:NERDTreeDirArrowExpandable = '>'
    let g:NERDTreeDirArrowCollapsible = 'V'
else
    " enable 24-bit colors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
    " colors
    colorscheme kawaii
    " encoding
    set enc=utf8
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'         " file browser
"Plugin 'davidhalter/jedi-vim'        " Python autocomplete
Plugin 'tpope/vim-commentary'        " commenting
Plugin 'lervag/vimtex'               " LaTeX
Plugin 'sirver/ultisnips'            " snippets
"Plugin 'jiangmiao/auto-pairs'        " auto-pairing brackets
Plugin 'mechatroner/rainbow_csv'     " csv plugin
Plugin 'tibabit/vim-templates'      " templates
Plugin 'tommason14/lammps.vim'      " lammps syntax highlight
Plugin 'Valloric/YouCompleteMe'      " autocomplete
"Bundle 'ervandew/supertab'
Plugin 'sk1418/HowMuch'              " Caclulator

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" syntax highlight
syntax on

" line numbers
set number
" tabs
"
set smarttab
set expandtab
set shiftwidth=4
set tabstop=4

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif


" snippets settings
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/ultisnips', getcwd().'/.vim/ultisnips']

" spell check
" set spell spelllang=en_us,ru_ru
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Disable Arrow keys in Normal mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" exit to normal mode with 'jj'
inoremap jj <ESC>

" Autocomplete pair brackets
" inoremap { {}<Esc>ha
" inoremap ( ()<Esc>ha
" inoremap [ []<Esc>ha
" inoremap "<Esc>ha
" inoremap ' ''<Esc>ha
" inoremap ` ``<Esc>ha

" Template plugin settings
let g:tmpl_search_paths = ['~/.vim/templates']
let g:tmpl_author_email = 'l.pilyugin@gmail.com'
nnoremap <S-T> :TemplateInit<CR>

set exrc     " use local .vimrc            
set secure   " forbid .vimrc run bash and smth else
set autoread " automatically reload buffer
set clipboard=unnamedplus " use system clipboard

" Terminal shortcut
set termwinsize=20x0
cabbrev bt bo term

" Extra file types
autocmd BufRead,BufNewFile *.lmpt setfiletype lammps

" YouCompleteMe settings
" make YCM compatible with UltiSnips (using <Ctrl-N>, <Ctrl-P>)
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
" remove YCM ui
let g:ycm_show_diagnostics_ui = 0
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
set completeopt-=preview

" backspace fix
set backspace=indent,eol,start

" NerdTree settings
nmap <F6> :NERDTreeToggle<CR>
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
            \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
let g:NERDTreeFileLines = 1

" buffer switching
nnoremap .<C-N> :bnext<cr>
nnoremap .<C-P> :bprevious<cr>
nnoremap .<C-D> :bdelete<cr>
nnoremap .<C-T> :%bd\|e#\|:NERDTreeToggle<cr>

" Paste only if yanced
noremap <Leader>p "0p
noremap <Leader>P "0P
vnoremap <Leader>p "0p

" HowNuch plugin settings
let g:HowMuch_scale = 20
