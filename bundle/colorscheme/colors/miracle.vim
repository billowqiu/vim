" Vim color file
" Author: Liang Feng <fliang98 AT gmail DOT com>
" Version: 0.3
"
" Note: support GUI & 256 color terminal.
"       This colo scheme is based on 'lucius' color scheme.

set background=dark
hi clear
if exists('syntax_on')
    syntax reset
endif
let colors_name="miracle"

" Base color
" ----------
" LightBlue4: #68838b
" Black: #000000
hi Normal guifg=LightBlue4 guibg=Black gui=none
hi Normal ctermfg=66 ctermbg=0


" Comment Group
" -------------
" any comment
hi Comment guifg=#606060 guibg=NONE gui=none
hi Comment ctermfg=59 cterm=none


" Constant Group
" --------------
" any constant
hi Constant guifg=#cc9393 gui=none
hi Constant ctermfg=174 cterm=none
hi link Number Constant
hi link Boolean Number
hi link Float Number

" SeaGreen: #2e8b57
hi String guifg=#008080 gui=none
hi String ctermfg=30 cterm=none
hi link Character String


" Identifier Group
" ----------------
" any variable name
" Orange3: #cd8500
hi Identifier guifg=Orange3 gui=none
hi Identifier ctermfg=172 cterm=none
" Orange4: #8b5a00
hi Identifier guifg=Orange4 gui=none
hi Identifier ctermfg=94 cterm=none
hi link Function Identifier


" Statement Group
" ---------------
" any statement
" DarkoliveGreen4: #6e8b3d
hi Statement guifg=DarkoliveGreen4 gui=none
hi Statement ctermfg=65 cterm=none
hi Statement guifg=#a6a600 gui=none
hi Statement ctermfg=142 cterm=none
hi Statement guifg=Yellow4 gui=none
hi Statement ctermfg=100 cterm=none
" if, then, else
hi link Conditional Statement
" try, catch, throw, raise
hi link Exception Statement
" for, while, do
hi link Repeat Statement
" case, default
hi link Label Statement
" sizeof, +, *
hi link Operator Statement
" any other keyword
hi link Keyword Statement


" Preprocessor Group
" ------------------
" generic preprocessor
" DodgerBlue3: #1874cd
hi PreProc guifg=DodgerBlue3 gui=none
hi PreProc ctermfg=32 cterm=none
" #include
hi link Include PreProc
" #define
hi link Define PreProc
" same as define
hi link Macro PreProc
" #if, #else, #endif
hi link PreCondit PreProc


" Type Group
" ----------
" int, long, char
" MediumPurple3: #8968cd
hi Type guifg=MediumPurple3 gui=none
hi Type ctermfg=98 cterm=none
" auto, static, register, volatile
hi link StorageClass Type
" struct, union, enum
hi link Structure Type
" typedef
hi link Typedef Type


" Special Group
" -------------
" any special symbol
" brown: #804040
hi Special guifg=#804040 guibg=NONE gui=none
hi Special ctermfg=95 cterm=none
" special character in a constant
hi link SpecialChar Special
" things you can CTRL-]
hi link Tag Special
" character that needs attention
hi link Delimiter Special
" special things inside a comment
hi link SpecialComment Special
" debugging statements
hi link Debug Special


" Underlined Group
" ----------------
" text that stands out, html links
hi Underlined guifg=fg gui=underline
hi Underlined ctermfg=fg cterm=underline


" Ignore Group
" ------------
" left blank, hidden
hi Ignore guifg=bg
hi Ignore ctermfg=bg


" Error Group
" -----------
" any erroneous construct
" White: #ffffff
" Red:   #ff0000
hi Error guifg=White guibg=Red gui=none
hi Error ctermfg=15 ctermbg=9 cterm=none


" Todo Group
" ----------
" todo, fixme, note, xxx
hi Todo guifg=#efef8f guibg=NONE gui=underline
hi Todo ctermfg=228 ctermbg=NONE cterm=underline


" Spelling
" --------
" word not recognized
hi SpellBad guisp=#ee0000 gui=undercurl
hi SpellBad ctermbg=196 cterm=undercurl
" word not capitalized
hi SpellCap guisp=#eeee00 gui=undercurl
hi SpellCap ctermbg=226 cterm=undercurl
" rare word
hi SpellRare guisp=#ffa500 gui=undercurl
hi SpellRare ctermbg=214 cterm=undercurl
" wrong spelling for selected region
hi SpellLocal guisp=#ffa500 gui=undercurl
hi SpellLocal ctermbg=214 cterm=undercurl


" Cursor
" ------
" character under the cursor
hi Cursor guifg=bg guibg=#a3e3ed
hi Cursor ctermfg=bg ctermbg=153
" like cursor, but used when in IME mode
hi CursorIM guifg=bg guibg=#96cdcd
hi CursorIM ctermfg=bg ctermbg=116
" cursor column
hi CursorColumn guifg=NONE guibg=#262626 gui=none
hi CursorColumn ctermfg=NONE ctermbg=235 cterm=none
" cursor line/row
hi CursorLine gui=NONE guibg=#262626 gui=none
hi CursorLine cterm=NONE ctermbg=235 cterm=none


" Misc
" ----
" directory names and other special names in listings
hi Directory guifg=#c0e0b0 gui=none
hi Directory ctermfg=151 cterm=none
" error messages on the command line
" White: #ffffff
" Red:   #ff0000
hi ErrorMsg guifg=White guibg=Red gui=none
hi ErrorMsg ctermfg=15 ctermbg=9 cterm=none
" column separating vertically split windows
hi VertSplit guifg=#777777 guibg=#363946 gui=none
hi VertSplit ctermfg=243 ctermbg=237 cterm=none
" columns where signs are displayed (used in IDEs)
hi SignColumn guifg=#9fafaf guibg=#181818 gui=none
hi SignColumn ctermfg=248 ctermbg=234 cterm=none
" line numbers
hi LineNr guifg=#818698 guibg=#363946
hi LineNr ctermfg=245 ctermbg=237
" match parenthesis, brackets
hi MatchParen guifg=#b2b2a0 guibg=#2e2e2e gui=bold
hi MatchParen ctermfg=145 ctermbg=236 cterm=bold
" the 'more' prompt when output takes more than one line
hi MoreMsg guifg=#2e8b57 gui=none
hi MoreMsg ctermfg=29 cterm=none
" text showing what mode you are in
hi ModeMsg guifg=#76d5f8 guibg=NONE gui=none
hi ModeMsg ctermfg=117 ctermbg=NONE cterm=none
" the '~' and '@' and showbreak, '>' double wide char doesn't fit on line
hi NonText guifg=#404040 gui=none
hi NonText ctermfg=238 cterm=none
" the hit-enter prompt (show more output) and yes/no questions
hi Question guifg=fg gui=none
hi Question ctermfg=fg cterm=none
" meta and special keys used with map, unprintable characters
hi SpecialKey guifg=#405060
hi SpecialKey ctermfg=239
" titles for output from :set all, :autocmd, etc
hi Title guifg=#62bdde gui=none
hi Title ctermfg=74 cterm=none
"hi Title guifg=#5ec8e5 gui=none
" warning messages
hi WarningMsg guifg=#e5786d gui=none
hi WarningMsg ctermfg=173 cterm=none
" current match in the wildmenu completion
hi WildMenu guifg=White guibg=#363946 gui=bold,underline
hi WildMenu ctermfg=15 ctermbg=237 cterm=bold
" color column highlighting
hi ColorColumn guifg=NONE guibg=#403630 gui=none
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=none


" Diff
" ----
" added line
hi DiffAdd guifg=#80a090 guibg=#313c36 gui=none
hi DiffAdd ctermfg=108 ctermbg=237 cterm=none
" changed line
hi DiffChange guifg=NONE guibg=#4a343a gui=none
hi DiffChange ctermfg=fg ctermbg=237 cterm=none
" deleted line
hi DiffDelete guifg=#6c6661 guibg=#3c3631 gui=none
hi DiffDelete ctermfg=241 ctermbg=237 cterm=none
" changed text within line
hi DiffText guifg=#f05060 guibg=#4a343a gui=bold
hi DiffText ctermfg=203 ctermbg=237 cterm=bold


" Folds
" -----
" line used for closed folds
hi Folded guifg=fg guibg=bg gui=none
hi Folded ctermfg=fg ctermbg=bg cterm=none
" column on side used to indicated open and closed folds
hi FoldColumn guifg=fg guibg=#363946 gui=none
hi FoldColumn ctermfg=fg ctermbg=237 cterm=none


" Search
" ------
" highlight incremental search text; also highlight text replaced with :s///c
hi IncSearch guifg=#66ffff gui=reverse
hi IncSearch ctermfg=87 cterm=reverse
" hlsearch (last search pattern), also used for quickfix
hi Search guibg=#ffaa33 gui=none
hi Search ctermbg=215 cterm=none


" Popup Menu
" ----------
" normal item in popup
hi Pmenu guifg=#e0e0e0 guibg=#303840 gui=none
hi Pmenu ctermfg=7 ctermbg=237 cterm=none
" selected item in popup
hi PmenuSel guifg=White guibg=#505860 gui=none
hi PmenuSel ctermfg=15 ctermbg=240 cterm=none
" scrollbar in popup
hi PMenuSbar guibg=#505860 gui=none
hi PMenuSbar ctermbg=240 cterm=none
" thumb of the scrollbar in the popup
hi PMenuThumb guibg=#808890 gui=none
hi PMenuThumb ctermbg=102 cterm=none


" Status Line
" -----------
" status line for current window
hi StatusLine guifg=#e0e0e0 guibg=#363946 gui=bold
hi StatusLine ctermfg=7 ctermbg=237 cterm=bold
" status line for non-current windows
hi StatusLineNC guifg=#767986 guibg=#363946 gui=none
hi StatusLineNC ctermfg=8 ctermbg=237 cterm=none


" Tab Lines
" ---------
" tab pages line, not active tab page label
hi TabLine guifg=#b6bf98 guibg=#363946 gui=none
hi TabLine ctermfg=144 ctermbg=237 cterm=none
" tab pages line, where there are no labels
hi TabLineFill guifg=#cfcfaf guibg=#363946 gui=none
hi TabLineFill ctermfg=187 ctermbg=237 cterm=none
" tab pages line, active tab page label
hi TabLineSel guifg=#efefef guibg=#414658 gui=bold
hi TabLineSel ctermfg=7 ctermbg=239 cterm=bold


" Visual
" ------
" visual mode selection
hi Visual guifg=NONE guibg=#364458
hi Visual ctermfg=NONE ctermbg=238
" visual mode selection when vim is not owning the selection (x11 only)
hi VisualNOS guifg=fg gui=underline
hi VisualNOS ctermfg=fg cterm=underline
