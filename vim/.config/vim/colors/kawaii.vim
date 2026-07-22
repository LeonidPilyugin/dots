set t_Co=256
set termguicolors

set background=light
let g:colors_name = "kawaii"

hi  ColorColumn     gui=NONE        guifg=NONE      guibg=#FF99D5
hi  Visual          gui=NONE        guifg=#FFEBF6   guibg=#FF99D5
hi  Search          gui=NONE        guifg=#FFEBF6   guibg=#FF99D5
hi  Comment         gui=NONE        guifg=#FF1F9E   guibg=#FFE0F2
hi  Constant        gui=NONE        guifg=#FF99D5   guibg=NONE
hi  CurSearch       gui=NONE        guifg=#FFEBF6   guibg=#FF1F9E
hi  Keyword         gui=reverse     guifg=#B500C2   guibg=#FFE0F2
hi  MatchParen      gui=NONE        guifg=#FF1F9E   guibg=NONE
hi  SpellRare       gui=NONE        guifg=#FF0000   guibg=NONE
hi  String          gui=NONE        guifg=#FF1F9E   guibg=NONE
hi  Normal          gui=NONE        guifg=#282E33   guibg=#FFE0F2
hi  Number          gui=reverse     guifg=#FF1F9E   guibg=#FFE0F2
hi  Statement       gui=NONE        guifg=#B500C2   guibg=#FFE0F2
hi  StatusLine      gui=bold        guifg=#FF1F9E   guibg=#FFEBF6
hi  StatusLineNC    gui=bold        guifg=#B500C2   guibg=#FFEBF6
hi  VertSplit       gui=reverse     guifg=#FFE0F2   guibg=#282E33

highlight! link PMenu               Search
highlight! link PMenuSel            CurSearch
highlight! link PMenuThumb          CurSearch
highlight! link StatusLineTerm      StatusLine
highlight! link StatusLineTermNC    StatusLineNC
highlight! link TabLine             StatusLineNC
highlight! link TabLineSel          StatusLine
highlight! link TabLineFill         Normal
highlight! link TabPanelFill        Normal
highlight! link Conceal             Normal
highlight! link EndOfBuffer         Normal

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
