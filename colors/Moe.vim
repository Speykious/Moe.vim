" Vim Moe colorscheme using GUI colors.
" Author: Speykious <speykious@gmail.com>
" Maintainer: Speykious <speykious@gmail.com
" Notes: To check the meaning of the highlight groups, :help 'highlight'.

set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="Moe"

" GuiFor(group, guibg, guifg, gui)
function! GuiFor(group, ...)
  let histring = 'hi ' . a:group . ' '

  if strlen(a:1)
    let histring .= 'guibg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let histring .= 'guifg=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let histring .= 'gui=' . a:3 . ' '
  endif

  execute histring
endfunction

"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------
"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

let moe_black        = '0x151519'
let moe_gray         = '0x6d6a95'

" normal
let moe_red          = '0xff0051'
let moe_green        = '0x05ffd5'
let moe_yellow       = '0xffff7f'
let moe_blue         = '0x4b84ff'
let moe_magenta      = '0xff6eec'
let moe_cyan         = '0x6affee'
let moe_white        = '0xffffff'

" dark
let moe_dark_red     = '0x9f0035'
let moe_dark_green   = '0x04caa6'
let moe_dark_yellow  = '0xe5da64'
let moe_dark_blue    = '0x3962c1'
let moe_dark_magenta = '0xe12fa9'
let moe_dark_cyan    = '0x00d5ce'
let moe_dark_white   = '0xeeeeee'

" --------------------------------
" Editor settings
" --------------------------------
GuiFor("Normal", moe_dark_white)
" GuiFor("Cursor", )
" GuiFor("CursorLine", )
GuiFor("LineNr", moe_yellow)
" GuiFor("CursorLineNR", )

" -----------------
" - Number column -
" -----------------
" GuiFor("CursorColumn", )
" GuiFor("FoldColumn", )
" GuiFor("SignColumn", )
" GuiFor("Folded", )

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
GuiFor("VertSplit", moe_green)
" GuiFor("ColorColumn", )
GuiFor("TabLine", moe_dark_white)
GuiFor("TabLineFill", moe_dark_white, moe_black)
GuiFor("TabLineSel", moe_magenta)

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
GuiFor("Directory", moe_blue)
GuiFor("Search", moe_black, moe_dark_red)
GuiFor("IncSearch", moe_black, moe_green)

" -----------------
" - Prompt/Status -
" -----------------
" GuiFor("StatusLine", )
" GuiFor("StatusLineNC", )
" GuiFor("WildMenu", )
" GuiFor("Question", )
" GuiFor("Title", )
" GuiFor("ModeMsg", )
" GuiFor("MoreMsg", )

" --------------
" - Visual aid -
" --------------
GuiFor("MatchParen", moe_white, 'none', 'bold')
GuiFor("Visual", moe_black, moe_dark_red)
" GuiFor("VisualNOS", )
GuiFor("NonText", moe_dark_yellow)

GuiFor("Todo", moe_red)
GuiFor("Underlined", moe_white)
GuiFor("Error", moe_white, moe_dark_red)
GuiFor("ErrorMsg", moe_red)
GuiFor("WarningMsg", moe_dark_yellow)
GuiFor("Ignore", moe_gray)
GuiFor("SpecialKey", moe_dark_yellow)

" --------------------------------
" Variable types
" --------------------------------
GuiFor("Constant", moe_dark_red)
GuiFor("String", moe_green)
GuiFor("StringDelimiter", moe_dark_green)
GuiFor("Character", moe_dark_yellow)
GuiFor("Number", moe_dark_magenta)
GuiFor("Boolean", moe_dark_magenta)
GuiFor("Float", moe_dark_magenta)

GuiFor("Identifier", moe_dark_white)
GuiFor("Function", moe_blue)

" --------------------------------
" Language constructs
" --------------------------------
GuiFor("Statement", )
GuiFor("Conditional", moe_red)
GuiFor("Repeat", moe_red)
GuiFor("Label", moe_red)
GuiFor("Operator", moe_white, 'none', 'bold')
GuiFor("Keyword", moe_red)
GuiFor("Exception", moe_red)
GuiFor("Comment", moe_gray)

GuiFor("Special", moe_dark_magenta)
GuiFor("SpecialChar", moe_magenta)
GuiFor("Tag", moe_dark_magenta)
GuiFor("Delimiter", moe_white)
GuiFor("SpecialComment", moe_green)
GuiFor("Debug", moe_dark_yellow)

" ----------
" - C like -
" ----------
GuiFor("PreProc", moe_dark_magenta)
GuiFor("Include", moe_dark_red)
GuiFor("Define", moe_dark_red)
GuiFor("Macro", moe_dark_red)
GuiFor("PreCondit", moe_dark_red)

GuiFor("Type", moe_blue, 'none', 'bold')
GuiFor("StorageClass", moe_blue, 'none', 'bold')
GuiFor("Structure", moe_blue, 'none', 'bold')
GuiFor("Typedef", moe_blue, 'none', 'bold')

" --------------------------------
" Diff
" --------------------------------
GuiFor("DiffAdd", moe_dark_green)
GuiFor("DiffChange", moe_dark_white)
GuiFor("DiffDelete", moe_dark_red)
GuiFor("DiffText", moe_dark_white, moe_gray)

" --------------------------------
" Completion menu
" --------------------------------
GuiFor("Pmenu", moe_dark_white, moe_gray)
GuiFor("PmenuSel", moe_white, moe_dark_red)
GuiFor("PmenuSbar", 'none', moe_red)
" GuiFor("PmenuThumb", )

" --------------------------------
" Spelling
" --------------------------------
" GuiFor("SpellBad", )
" GuiFor("SpellCap", )
" GuiFor("SpellLocal", )
" GuiFor("SpellRare", )

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
