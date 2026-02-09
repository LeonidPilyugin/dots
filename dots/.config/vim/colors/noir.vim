" Modified 256noir color theme (https://github.com/andreasvc/vim-256noir/)

highlight clear
set background=dark
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "noir"

hi  Normal          cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  Keyword         cterm=NONE          ctermfg=White       ctermbg=Black
hi  Number          cterm=NONE          ctermfg=DarkRed     ctermbg=Black
hi  String          cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  Comment         cterm=NONE          ctermfg=DarkGray    ctermbg=Black
hi  Constant        cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  Search          cterm=NONE          ctermfg=Gray        ctermbg=DarkGray
hi  CurSearch       cterm=NONE          ctermfg=White       ctermbg=DarkGray
hi  DiffChange      cterm=NONE          ctermfg=Red         ctermbg=White
hi  DiffText        cterm=bold          ctermfg=Gray        ctermbg=Red
hi  SpellBad        cterm=undercurl     ctermfg=White       ctermbg=DarkRed
hi  SpellCap        cterm=NONE          ctermfg=White       ctermbg=Red
hi  SpellRare       cterm=NONE          ctermfg=Red         ctermbg=Black
hi  WildMenu        cterm=NONE          ctermfg=DarkGray    ctermbg=White
hi  Pmenu           cterm=NONE          ctermfg=White       ctermbg=DarkGray
hi  PmenuThumb      cterm=NONE          ctermfg=Black       ctermbg=DarkGray
hi  SpecialKey      cterm=NONE          ctermfg=Black       ctermbg=White
hi  MatchParen      cterm=NONE          ctermfg=DarkRed     ctermbg=Black
hi  CursorLine      cterm=NONE          ctermfg=NONE        ctermbg=Black
hi  StatusLine      cterm=reverse       ctermfg=Gray        ctermbg=Black
hi  StatusLineNC    cterm=reverse       ctermfg=DarkGray    ctermbg=Black
hi  Visual          cterm=reverse       ctermfg=Gray        ctermbg=White
hi  Cursor          cterm=reverse       ctermfg=Gray        ctermbg=White
hi  TermCursor      cterm=reverse       ctermfg=NONE        ctermbg=NONE
hi  ColorColumn     cterm=reverse       ctermfg=Gray        ctermbg=Black
hi  TabLineFill     cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  TabLine         cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  TabLineSel      cterm=bold          ctermfg=White       ctermbg=Black

highlight!  link    SignColumn      Normal
highlight!  link    Error           Number
highlight!  link    ErrorMsg        Error
highlight!  link    QuickFixLine    Normal
highlight!  link    Boolean         Number
highlight!  link    Delimiter       Normal
highlight!  link    Identifier      Normal
highlight!  link    Title           Normal
highlight!  link    Debug           Normal
highlight!  link    Exception       Normal
highlight!  link    FoldColumn      Normal
highlight!  link    Macro           Normal
highlight!  link    ModeMsg         Normal
highlight!  link    MoreMsg         Normal
highlight!  link    Question        Normal
highlight!  link    Conditional     Keyword
highlight!  link    Statement       Keyword
highlight!  link    Operator        Keyword
highlight!  link    Structure       Keyword
highlight!  link    Function        Keyword
highlight!  link    Include         Keyword
highlight!  link    Type            Keyword
highlight!  link    Typedef         Keyword
highlight!  link    Todo            Keyword
highlight!  link    Label           Keyword
highlight!  link    Define          Keyword
highlight!  link    DiffAdd         Keyword
highlight!  link    diffAdded       Keyword
highlight!  link    diffCommon      Keyword
highlight!  link    Directory       Keyword
highlight!  link    PreCondit       Keyword
highlight!  link    PreProc         Keyword
highlight!  link    Repeat          Keyword
highlight!  link    Special         Keyword
highlight!  link    SpecialChar     Keyword
highlight!  link    StorageClass    Keyword
highlight!  link    SpecialComment  String
highlight!  link    CursorLineNr    String
highlight!  link    Character       Number
highlight!  link    Float           Number
highlight!  link    Tag             Number
highlight!  link    Folded          Number
highlight!  link    WarningMsg      Number
highlight!  link    iCursor         SpecialKey
highlight!  link    SpellLocal      SpellCap
highlight!  link    LineNr          Comment
highlight!  link    NonText         Comment
highlight!  link    DiffDelete      Comment
highlight!  link    diffRemoved     Comment
highlight!  link    PmenuSbar       Visual
highlight!  link    PmenuSel        Visual
highlight!  link    VisualNOS       Visual
highlight!  link    VertSplit       Normal
highlight!  link    Underlined      SpellRare
highlight!  link    rstEmphasis     SpellRare
highlight!  link    diffChanged     DiffChange
