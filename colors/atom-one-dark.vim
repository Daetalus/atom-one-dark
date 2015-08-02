" Vim atom-one-dark color file
"
" Author: Boxiang Sun <daetalusun@gmail.com>
" https://github.com/Daetalus/atom-one-dark
"
" Note: Based on the default one dark theme for Atom
"

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="atom-one-dark"

" Set GUI and Terminal color values
if has("gui_running")
    let s:white = "F8F8F2"
    let s:darkgrey = "202020"
    let s:orchid = "C679DD"
else
    let s:white = "White"
    let s:darkgrey = "234"
    let s:orchid = "134"
endif

" Highlighting function
fun <sid>hi(group, fg, bg, format)
    if has("gui_running")
        if a:fg != ""
            exec "hi " . a:group . " guifg=#" . a:fg
        endif
        if a:bg != ""
            exec "hi " . a:group . " guibg=#" . a:bg
        endif
    else
        if a:fg != ""
            exec "hi " . a:group . " ctermfg=" . a:fg
        endif
        if a:bg != ""
            exec "hi " . a:group . " ctermbg=" . a:bg
        endif
    endif

    if a:format != ""
        exec "hi " . a:group . " gui=" . a:format . " cterm=" . a:format
    endif
endfun

" hi Boolean         guifg=#D2945D
" hi Character       guifg=#90C378
" hi Number          guifg=#D2945D
" hi String          guifg=#90C378
" " hi Conditional     guifg=#F92672               gui=bold
" hi Constant        guifg=#D2945D               gui=bold
"
" hi Cursor          guifg=#000000 guibg=#F8F8F0
" hi iCursor         guifg=#000000 guibg=#F8F8F0
" " hi Debug           guifg=#BCA3A3               gui=bold
" hi Define          guifg=#B27ECD
"
" hi Delimiter       guifg=#A6B2C0
" hi DiffAdd         guifg=#D2EBBE guibg=#437019
" hi DiffChange      guifg=#2B5B77 guibg=#2B5B77
" hi DiffDelete      guifg=#40000A guibg=#700009
" hi DiffText        guifg=#8FBFBC guibg=#000000 gui=italic,bold
" hi Directory       guifg=#DAD085               gui=bold
" hi Error           guifg=#8BD649 guibg=#1E0010
" hi ErrorMsg        guifg=#F92672 guibg=bg      gui=bold
" " hi ErrorMsg        guifg=#902020 guibg=#232526 gui=bold
" hi Exception       guifg=#F77669               gui=bold
"
" hi Float           guifg=#D2945D
" hi FoldColumn      guifg=#535D66 guibg=#000000
" hi Folded          guifg=#A0A8B0 guibg=#000000
" hi Function        guifg=#61AEEF
" hi Identifier      guifg=#FD971F
" hi Ignore          guifg=#808080 guibg=bg
" hi IncSearch       guifg=#37474F guibg=#000000
call <sid>hi("Keyword", s:orchid, "", "none")
" " hi Keyword         guifg=#C679DD               gui=bold
" hi Variable        guifg=#DF6A73
" hi Label           guifg=#90C378               gui=none
" " hi Macro           guifg=#C4BE89               gui=italic
" hi SpecialKey      guifg=#444444               gui=italic
" hi MatchParen      guifg=#FFFFFF guibg=#556779 gui=bold
" hi ModeMsg         guifg=#90C378
" hi MoreMsg         guifg=#799D6A
" hi Operator        guifg=#8FBFDC
"
" " complete menu
" hi Pmenu           guifg=#66D9EF guibg=#000000
" hi PmenuSel                      guibg=#808080
" hi PmenuSbar                     guibg=#080808
" hi PmenuThumb      guifg=#66D9EF
" "
" " hi PreCondit       guifg=#A6E22E               gui=bold
" hi PreProc         guifg=#8FBFDC
" hi Question        guifg=#65C254
" " hi Repeat          guifg=#F92672               gui=bold
" hi Search          guifg=#263238 guibg=#CDD3DE   gui=underline
" " marks
" hi SignColumn      guifg=#777777 guibg=#333333
" " hi SpecialChar     guifg=#F92672               gui=bold
" " hi SpecialComment  guifg=#7E8E91               gui=bold
" hi Special         guifg=#799D6A guibg=bg      gui=italic
" if has("spell")
"     hi SpellBad    guisp=#902020 gui=undercurl
"     hi SpellCap    guisp=#0000DF gui=undercurl
"     hi SpellLocal  guisp=#540063 gui=undercurl
"     hi SpellRare   guisp=#2D7067 gui=undercurl
" endif
"
call <sid>hi("Statement", s:orchid, "", "bold")
" hi Statement       guifg=#B27ECD               gui=bold
" hi StatusLine      guifg=#95A2BB guibg=#22252B gui=italic
" " hi StatusLine      guifg=#95A2BB guibg=fg
" hi StatusLineNC    guifg=#808080 guibg=#080808
" hi StorageClass    guifg=#C59F6F               gui=italic
" hi Structure       guifg=#8FBFDC
" hi Tag             guifg=#DF6A73               gui=italic
" hi Title           guifg=#79B950
" hi Todo            guifg=#FFFFFF guibg=bg      gui=bold
"
" " hi Typedef         guifg=#66D9EF
" hi Type            guifg=#E5C17C               gui=bold
" " hi Underlined      guifg=#808080               gui=underline
"
" " unchanged
" hi VertSplit       guifg=#808080 guibg=#080808 gui=bold
" " hi VisualNOS                     guibg=#403D3D
" hi Visual                        guibg=#404040
" " hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
" hi WildMenu        guifg=#F0A0C0 guibg=#302028
"
" hi TabLineFill     guifg=#9098A0
" " unchanged
" hi TabLine         guibg=#1B1D1E guifg=#808080 gui=none
"
call <sid>hi("Normal", s:white, s:darkgrey, "none")
" hi Normal          guifg=#F8F8F2 guibg=#202020
" hi Comment         guifg=#59626F
" " unchanged
" hi CursorLine                    guibg=#293739
" hi CursorLineNr    guifg=#CCC5C4               gui=none
" " unchanged
" hi CursorColumn                  guibg=#293739
" hi ColorColumn                   guibg=#5F6B85
" hi LineNr          guifg=#465457 guibg=#232526
" hi NonText         guifg=#465457
" hi SpecialKey      guifg=#465457

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
" Remove functions
delf <sid>hi
