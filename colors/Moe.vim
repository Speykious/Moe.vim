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

" call s:GuiFor(group, guibg, guifg, gui)
function! s:GuiFor(group, ...)
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
call s:GuiFor("Normal", moe_dark_white)
" call s:GuiFor("Cursor", )
" call s:GuiFor("CursorLine", )
call s:GuiFor("LineNr", moe_yellow)
" call s:GuiFor("CursorLineNR", )

" -----------------
" - Number column -
" -----------------
" call s:GuiFor("CursorColumn", )
" call s:GuiFor("FoldColumn", )
" call s:GuiFor("SignColumn", )
" call s:GuiFor("Folded", )

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
call s:GuiFor("VertSplit", moe_green)
" call s:GuiFor("ColorColumn", )
call s:GuiFor("TabLine", moe_dark_white)
call s:GuiFor("TabLineFill", moe_dark_white, moe_black)
call s:GuiFor("TabLineSel", moe_magenta)

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
call s:GuiFor("Directory", moe_blue)
call s:GuiFor("Search", moe_black, moe_dark_red)
call s:GuiFor("IncSearch", moe_black, moe_green)

" -----------------
" - Prompt/Status -
" -----------------
" call s:GuiFor("StatusLine", )
" call s:GuiFor("StatusLineNC", )
" call s:GuiFor("WildMenu", )
" call s:GuiFor("Question", )
" call s:GuiFor("Title", )
" call s:GuiFor("ModeMsg", )
" call s:GuiFor("MoreMsg", )

" --------------
" - Visual aid -
" --------------
call s:GuiFor("MatchParen", moe_white, 'none', 'bold')
call s:GuiFor("Visual", moe_black, moe_dark_red)
" call s:GuiFor("VisualNOS", )
call s:GuiFor("NonText", moe_dark_yellow)

call s:GuiFor("Todo", moe_red)
call s:GuiFor("Underlined", moe_white)
call s:GuiFor("Error", moe_white, moe_dark_red)
call s:GuiFor("ErrorMsg", moe_red)
call s:GuiFor("WarningMsg", moe_dark_yellow)
call s:GuiFor("Ignore", moe_gray)
call s:GuiFor("SpecialKey", moe_dark_yellow)

" --------------------------------
" Variable types
" --------------------------------
call s:GuiFor("Constant", moe_dark_red)
call s:GuiFor("String", moe_green)
call s:GuiFor("StringDelimiter", moe_dark_green)
call s:GuiFor("Character", moe_dark_yellow)
call s:GuiFor("Number", moe_dark_magenta)
call s:GuiFor("Boolean", moe_dark_magenta)
call s:GuiFor("Float", moe_dark_magenta)

call s:GuiFor("Identifier", moe_dark_white)
call s:GuiFor("Function", moe_blue)

" --------------------------------
" Language constructs
" --------------------------------
call s:GuiFor("Statement", )
call s:GuiFor("Conditional", moe_red)
call s:GuiFor("Repeat", moe_red)
call s:GuiFor("Label", moe_red)
call s:GuiFor("Operator", moe_white, 'none', 'bold')
call s:GuiFor("Keyword", moe_red)
call s:GuiFor("Exception", moe_red)
call s:GuiFor("Comment", moe_gray)

call s:GuiFor("Special", moe_dark_magenta)
call s:GuiFor("SpecialChar", moe_magenta)
call s:GuiFor("Tag", moe_dark_magenta)
call s:GuiFor("Delimiter", moe_white)
call s:GuiFor("SpecialComment", moe_green)
call s:GuiFor("Debug", moe_dark_yellow)

" ----------
" - C like -
" ----------
call s:GuiFor("PreProc", moe_dark_magenta)
call s:GuiFor("Include", moe_dark_red)
call s:GuiFor("Define", moe_dark_red)
call s:GuiFor("Macro", moe_dark_red)
call s:GuiFor("PreCondit", moe_dark_red)

call s:GuiFor("Type", moe_blue, 'none', 'bold')
call s:GuiFor("StorageClass", moe_blue, 'none', 'bold')
call s:GuiFor("Structure", moe_blue, 'none', 'bold')
call s:GuiFor("Typedef", moe_blue, 'none', 'bold')

" --------------------------------
" Diff
" --------------------------------
call s:GuiFor("DiffAdd", moe_dark_green)
call s:GuiFor("DiffChange", moe_dark_white)
call s:GuiFor("DiffDelete", moe_dark_red)
call s:GuiFor("DiffText", moe_dark_white, moe_gray)

" --------------------------------
" Completion menu
" --------------------------------
call s:GuiFor("Pmenu", moe_dark_white, moe_gray)
call s:GuiFor("PmenuSel", moe_white, moe_dark_red)
call s:GuiFor("PmenuSbar", 'none', moe_red)
" call s:GuiFor("PmenuThumb", )

" --------------------------------
" Spelling
" --------------------------------
" call s:GuiFor("SpellBad", )
" call s:GuiFor("SpellCap", )
" call s:GuiFor("SpellLocal", )
" call s:GuiFor("SpellRare", )

"--------------------------------------------------------------------
" Specific settings                                                 |
"--------------------------------------------------------------------
