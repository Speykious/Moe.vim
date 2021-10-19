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

" call GuiFor(group, guibg, guifg, gui)
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
call GuiFor("Normal", moe_dark_white)
" call GuiFor("Cursor", )
" call GuiFor("CursorLine", )
call GuiFor("LineNr", moe_yellow)
" call GuiFor("CursorLineNR", )

" -----------------
" - Number column -
" -----------------
" call GuiFor("CursorColumn", )
" call GuiFor("FoldColumn", )
" call GuiFor("SignColumn", )
" call GuiFor("Folded", )

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
call GuiFor("VertSplit", moe_green)
" call GuiFor("ColorColumn", )
call GuiFor("TabLine", moe_dark_white)
call GuiFor("TabLineFill", moe_dark_white, moe_black)
call GuiFor("TabLineSel", moe_magenta)

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
call GuiFor("Directory", moe_blue)
call GuiFor("Search", moe_black, moe_dark_red)
call GuiFor("IncSearch", moe_black, moe_green)

" -----------------
" - Prompt/Status -
" -----------------
" call GuiFor("StatusLine", )
" call GuiFor("StatusLineNC", )
" call GuiFor("WildMenu", )
" call GuiFor("Question", )
" call GuiFor("Title", )
" call GuiFor("ModeMsg", )
" call GuiFor("MoreMsg", )

" --------------
" - Visual aid -
" --------------
call GuiFor("MatchParen", moe_white, 'none', 'bold')
call GuiFor("Visual", moe_black, moe_dark_red)
" call GuiFor("VisualNOS", )
call GuiFor("NonText", moe_dark_yellow)

call GuiFor("Todo", moe_red)
call GuiFor("Underlined", moe_white)
call GuiFor("Error", moe_white, moe_dark_red)
call GuiFor("ErrorMsg", moe_red)
call GuiFor("WarningMsg", moe_dark_yellow)
call GuiFor("Ignore", moe_gray)
call GuiFor("SpecialKey", moe_dark_yellow)

" --------------------------------
" Variable types
" --------------------------------
call GuiFor("Constant", moe_dark_red)
call GuiFor("String", moe_green)
call GuiFor("StringDelimiter", moe_dark_green)
call GuiFor("Character", moe_dark_yellow)
call GuiFor("Number", moe_dark_magenta)
call GuiFor("Boolean", moe_dark_magenta)
call GuiFor("Float", moe_dark_magenta)

call GuiFor("Identifier", moe_dark_white)
call GuiFor("Function", moe_blue)

" --------------------------------
" Language constructs
" --------------------------------
call GuiFor("Statement", )
call GuiFor("Conditional", moe_red)
call GuiFor("Repeat", moe_red)
call GuiFor("Label", moe_red)
call GuiFor("Operator", moe_white, 'none', 'bold')
call GuiFor("Keyword", moe_red)
call GuiFor("Exception", moe_red)
call GuiFor("Comment", moe_gray)

call GuiFor("Special", moe_dark_magenta)
call GuiFor("SpecialChar", moe_magenta)
call GuiFor("Tag", moe_dark_magenta)
call GuiFor("Delimiter", moe_white)
call GuiFor("SpecialComment", moe_green)
call GuiFor("Debug", moe_dark_yellow)

" ----------
" - C like -
" ----------
call GuiFor("PreProc", moe_dark_magenta)
call GuiFor("Include", moe_dark_red)
call GuiFor("Define", moe_dark_red)
call GuiFor("Macro", moe_dark_red)
call GuiFor("PreCondit", moe_dark_red)

call GuiFor("Type", moe_blue, 'none', 'bold')
call GuiFor("StorageClass", moe_blue, 'none', 'bold')
call GuiFor("Structure", moe_blue, 'none', 'bold')
call GuiFor("Typedef", moe_blue, 'none', 'bold')

" --------------------------------
" Diff
" --------------------------------
call GuiFor("DiffAdd", moe_dark_green)
call GuiFor("DiffChange", moe_dark_white)
call GuiFor("DiffDelete", moe_dark_red)
call GuiFor("DiffText", moe_dark_white, moe_gray)

" --------------------------------
" Completion menu
" --------------------------------
call GuiFor("Pmenu", moe_dark_white, moe_gray)
call GuiFor("PmenuSel", moe_white, moe_dark_red)
call GuiFor("PmenuSbar", 'none', moe_red)
" call GuiFor("PmenuThumb", )

" --------------------------------
" Spelling
" --------------------------------
" call GuiFor("SpellBad", )
" call GuiFor("SpellCap", )
" call GuiFor("SpellLocal", )
" call GuiFor("SpellRare", )

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
