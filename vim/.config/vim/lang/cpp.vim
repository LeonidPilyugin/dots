autocmd FileType cpp inoremap { {<CR>}<up><end><CR>

def FoldCComment(): string
    var line: string = getline(v:lnum)
    if line =~ '^\s*/\*'
        return '>1'
    elseif line =~ '\*/\s*$'
        return '<1'
    endif
    return '='
enddef

autocmd FileType cpp :setlocal cc=120
