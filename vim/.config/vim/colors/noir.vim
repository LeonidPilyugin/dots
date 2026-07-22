" Modified 256noir color theme (https://github.com/andreasvc/vim-256noir/)

highlight clear
set background=dark
if version > 580
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "noir"

hi  ColorColumn     cterm=reverse       ctermfg=Gray        ctermbg=Black
hi  Comment         cterm=NONE          ctermfg=DarkGray    ctermbg=Black
hi  Constant        cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  CurSearch       cterm=NONE          ctermfg=White       ctermbg=DarkGray
hi  Cursor          cterm=reverse       ctermfg=Gray        ctermbg=White
hi  CursorLine      cterm=NONE          ctermfg=NONE        ctermbg=Black
hi  DiffChange      cterm=NONE          ctermfg=Red         ctermbg=White
hi  DiffText        cterm=bold          ctermfg=Gray        ctermbg=Red
hi  Keyword         cterm=NONE          ctermfg=White       ctermbg=Black
hi  MatchParen      cterm=NONE          ctermfg=DarkRed     ctermbg=Black
hi  Normal          cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  Number          cterm=NONE          ctermfg=DarkRed     ctermbg=Black
hi  Pmenu           cterm=NONE          ctermfg=White       ctermbg=DarkGray
hi  PmenuThumb      cterm=NONE          ctermfg=Black       ctermbg=DarkGray
hi  Search          cterm=NONE          ctermfg=Gray        ctermbg=DarkGray
hi  SpecialKey      cterm=NONE          ctermfg=white       ctermbg=Black
hi  SpellBad        cterm=undercurl     ctermfg=White       ctermbg=DarkRed
hi  SpellCap        cterm=NONE          ctermfg=White       ctermbg=Red
hi  SpellRare       cterm=NONE          ctermfg=Red         ctermbg=Black
hi  StatusLine      cterm=reverse       ctermfg=Gray        ctermbg=Black
hi  StatusLineNC    cterm=reverse       ctermfg=DarkGray    ctermbg=Black
hi  String          cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  TabLine         cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  TabLineFill     cterm=NONE          ctermfg=Gray        ctermbg=Black
hi  TabLineSel      cterm=bold          ctermfg=White       ctermbg=Black
hi  TermCursor      cterm=reverse       ctermfg=NONE        ctermbg=NONE
hi  Visual          cterm=reverse       ctermfg=Gray        ctermbg=White
hi  WildMenu        cterm=NONE          ctermfg=DarkGray    ctermbg=White

highlight!  link    Boolean         Number
highlight!  link    Character       Number
highlight!  link    Conditional     Keyword
highlight!  link    CursorLineNr    String
highlight!  link    Debug           Normal
highlight!  link    Define          Keyword
highlight!  link    Delimiter       Normal
highlight!  link    DiffAdd         Keyword
highlight!  link    DiffDelete      Comment
highlight!  link    Directory       Keyword
highlight!  link    Error           Number
highlight!  link    ErrorMsg        Error
highlight!  link    Exception       Normal
highlight!  link    Float           Number
highlight!  link    FoldColumn      Normal
highlight!  link    Folded          Number
highlight!  link    Function        Keyword
highlight!  link    Identifier      Normal
highlight!  link    Include         Keyword
highlight!  link    Label           Keyword
highlight!  link    LineNr          Comment
highlight!  link    Macro           Normal
highlight!  link    ModeMsg         Normal
highlight!  link    MoreMsg         Normal
highlight!  link    NonText         Comment
highlight!  link    Operator        Keyword
highlight!  link    PmenuSbar       Visual
highlight!  link    PmenuSel        Visual
highlight!  link    PreCondit       Keyword
highlight!  link    PreProc         Keyword
highlight!  link    Question        Normal
highlight!  link    QuickFixLine    Normal
highlight!  link    Repeat          Keyword
highlight!  link    SignColumn      Normal
highlight!  link    Special         Keyword
highlight!  link    SpecialChar     Keyword
highlight!  link    SpecialComment  String
highlight!  link    SpellLocal      SpellCap
highlight!  link    Statement       Keyword
highlight!  link    StorageClass    Keyword
highlight!  link    Structure       Keyword
highlight!  link    Tag             Number
highlight!  link    Title           Normal
highlight!  link    Todo            Keyword
highlight!  link    Type            Keyword
highlight!  link    Typedef         Keyword
highlight!  link    Underlined      SpellRare
highlight!  link    VertSplit       Normal
highlight!  link    VisualNOS       Visual
highlight!  link    WarningMsg      Number
highlight!  link    diffAdded       Keyword
highlight!  link    diffChanged     DiffChange
highlight!  link    diffCommon      Keyword
highlight!  link    diffRemoved     Comment
highlight!  link    iCursor         SpecialKey
highlight!  link    rstEmphasis     SpellRare
