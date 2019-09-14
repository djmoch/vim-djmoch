" djmoch.vim -- Vim color scheme.
" Author:      Daniel Moch (daniel@danielmoch.com)
" Webpage:     https://git.danielmoch.com/vim-djmoch
" Description: My personal color schemee
" Last Change: 2019-09-14

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "djmoch"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE

    set background=light

    hi NonText ctermbg=15 ctermfg=25 cterm=NONE guibg=#ffffff guifg=#005faf gui=NONE
    hi Comment ctermbg=15 ctermfg=29 cterm=NONE guibg=#ffffff guifg=#00875f gui=NONE
    hi Constant ctermbg=15 ctermfg=88 cterm=NONE guibg=#ffffff guifg=#870000 gui=NONE
    hi Identifier ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi Statement ctermbg=15 ctermfg=25 cterm=NONE guibg=#ffffff guifg=#005faf gui=NONE
    hi PreProc ctermbg=15 ctermfg=97 cterm=NONE guibg=#ffffff guifg=#875faf gui=NONE
    hi Type ctermbg=15 ctermfg=97 cterm=NONE guibg=#ffffff guifg=#875faf gui=NONE
    hi Special ctermbg=15 ctermfg=29 cterm=NONE guibg=#ffffff guifg=#00875f gui=NONE
    hi Underlined ctermbg=15 ctermfg=0 cterm=undercurl guibg=#ffffff guifg=#000000 gui=undercurl
    hi Ignore ctermbg=15 ctermfg=250 cterm=NONE guibg=#ffffff guifg=#bcbcbc gui=NONE
    hi Error ctermbg=88 ctermfg=15 cterm=NONE guibg=#870000 guifg=#ffffff gui=NONE
    hi Todo ctermbg=15 ctermfg=0 cterm=reverse guibg=#ffffff guifg=#000000 gui=reverse
    hi StatusLine ctermbg=25 ctermfg=15 cterm=NONE guibg=#005faf guifg=#ffffff gui=NONE
    hi StatusLineNC ctermbg=237 ctermfg=75 cterm=NONE guibg=#3a3a3a guifg=#5fafff gui=NONE
    hi VertSplit ctermbg=15 ctermfg=250 cterm=NONE guibg=#ffffff guifg=#bcbcbc gui=NONE
    hi TabLine ctermbg=250 ctermfg=15 cterm=NONE guibg=#bcbcbc guifg=#ffffff gui=NONE
    hi TabLineFill ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi TabLineSel ctermbg=25 ctermfg=15 cterm=NONE guibg=#005faf guifg=#ffffff gui=NONE
    hi Title ctermbg=15 ctermfg=25 cterm=NONE guibg=#ffffff guifg=#005faf gui=NONE
    hi CursorLine ctermbg=250 ctermfg=0 cterm=NONE guibg=#bcbcbc guifg=#000000 gui=NONE
    hi LineNr ctermbg=250 ctermfg=0 cterm=NONE guibg=#bcbcbc guifg=#000000 gui=NONE
    hi CursorLineNr ctermbg=250 ctermfg=25 cterm=NONE guibg=#bcbcbc guifg=#005faf gui=NONE
    hi helpLeadBlank ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi helpNormal ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi Visual ctermbg=250 ctermfg=0 cterm=NONE guibg=#bcbcbc guifg=#000000 gui=NONE
    hi Pmenu ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi PmenuSbar ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi PmenuSel ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi PmenuThumb ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi FoldColumn ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi Folded ctermbg=250 ctermfg=15 cterm=NONE guibg=#bcbcbc guifg=#ffffff gui=NONE
    hi WildMenu ctermbg=250 ctermfg=0 cterm=NONE guibg=#bcbcbc guifg=#000000 gui=NONE
    hi SpecialKey ctermbg=15 ctermfg=100 cterm=NONE guibg=#ffffff guifg=#878700 gui=NONE
    hi DiffAdd ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi DiffChange ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi DiffDelete ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi DiffText ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi IncSearch ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#ffffff gui=NONE
    hi Search ctermbg=186 ctermfg=0 cterm=NONE guibg=#D7D787 guifg=#000000 gui=NONE
    hi Directory ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi MatchParen ctermbg=250 ctermfg=15 cterm=NONE guibg=#bcbcbc guifg=#ffffff gui=NONE
    hi SpellBad ctermbg=88 ctermfg=15 cterm=NONE guibg=#870000 guifg=#ffffff gui=NONE
    hi SpellCap ctermbg=15 ctermfg=88 cterm=undercurl guibg=#ffffff guifg=#870000 gui=undercurl guisp=#870000
    hi SpellLocal ctermbg=15 ctermfg=100 cterm=undercurl guibg=#ffffff guifg=#878700 gui=undercurl guisp=#878700
    hi SpellRare ctermbg=15 ctermfg=29 cterm=undercurl guibg=#ffffff guifg=#00875f gui=undercurl guisp=#00875f
    hi ColorColumn ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#ffffff gui=NONE
    hi SignColumn ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi ErrorMsg ctermbg=88 ctermfg=15 cterm=NONE guibg=#870000 guifg=#ffffff gui=NONE
    hi ModeMsg ctermbg=15 ctermfg=29 cterm=NONE guibg=#ffffff guifg=#00875f gui=NONE
    hi MoreMsg ctermbg=15 ctermfg=29 cterm=NONE guibg=#ffffff guifg=#00875f gui=NONE
    hi Question ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi Cursor ctermbg=0 ctermfg=15 cterm=NONE guibg=#000000 guifg=#ffffff gui=NONE
    hi CursorColumn ctermbg=100 ctermfg=15 cterm=NONE guibg=#878700 guifg=#ffffff gui=NONE
    hi Conceal ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi ToolbarLine ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi ToolbarButton ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi debugPC ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE
    hi debugBreakpoint ctermbg=15 ctermfg=0 cterm=NONE guibg=#ffffff guifg=#000000 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=white ctermfg=black cterm=NONE

    set background=light

    hi NonText ctermbg=white ctermfg=darkblue cterm=NONE
    hi Comment ctermbg=white ctermfg=darkgreen cterm=NONE
    hi Constant ctermbg=white ctermfg=darkred cterm=NONE
    hi Identifier ctermbg=white ctermfg=black cterm=NONE
    hi Statement ctermbg=white ctermfg=darkblue cterm=NONE
    hi PreProc ctermbg=white ctermfg=darkmagenta cterm=NONE
    hi Type ctermbg=white ctermfg=darkmagenta cterm=NONE
    hi Special ctermbg=white ctermfg=darkgreen cterm=NONE
    hi Underlined ctermbg=white ctermfg=black cterm=undercurl
    hi Ignore ctermbg=white ctermfg=gray cterm=NONE
    hi Error ctermbg=darkred ctermfg=white cterm=NONE
    hi Todo ctermbg=white ctermfg=black cterm=reverse
    hi StatusLine ctermbg=darkblue ctermfg=white cterm=NONE
    hi StatusLineNC ctermbg=darkgray ctermfg=blue cterm=NONE
    hi VertSplit ctermbg=white ctermfg=gray cterm=NONE
    hi TabLine ctermbg=gray ctermfg=white cterm=NONE
    hi TabLineFill ctermbg=white ctermfg=black cterm=NONE
    hi TabLineSel ctermbg=darkblue ctermfg=white cterm=NONE
    hi Title ctermbg=white ctermfg=darkblue cterm=NONE
    hi CursorLine ctermbg=gray ctermfg=black cterm=NONE
    hi LineNr ctermbg=gray ctermfg=black cterm=NONE
    hi CursorLineNr ctermbg=gray ctermfg=darkblue cterm=NONE
    hi helpLeadBlank ctermbg=white ctermfg=black cterm=NONE
    hi helpNormal ctermbg=white ctermfg=black cterm=NONE
    hi Visual ctermbg=gray ctermfg=black cterm=NONE
    hi Pmenu ctermbg=white ctermfg=black cterm=NONE
    hi PmenuSbar ctermbg=white ctermfg=black cterm=NONE
    hi PmenuSel ctermbg=white ctermfg=black cterm=NONE
    hi PmenuThumb ctermbg=white ctermfg=black cterm=NONE
    hi FoldColumn ctermbg=white ctermfg=black cterm=NONE
    hi Folded ctermbg=gray ctermfg=white cterm=NONE
    hi WildMenu ctermbg=gray ctermfg=black cterm=NONE
    hi SpecialKey ctermbg=white ctermfg=darkyellow cterm=NONE
    hi DiffAdd ctermbg=white ctermfg=black cterm=NONE
    hi DiffChange ctermbg=white ctermfg=black cterm=NONE
    hi DiffDelete ctermbg=white ctermfg=black cterm=NONE
    hi DiffText ctermbg=white ctermfg=black cterm=NONE
    hi IncSearch ctermbg=black ctermfg=white cterm=NONE
    hi Search ctermbg=yellow ctermfg=black cterm=NONE
    hi Directory ctermbg=white ctermfg=black cterm=NONE
    hi MatchParen ctermbg=gray ctermfg=white cterm=NONE
    hi SpellBad ctermbg=darkred ctermfg=white cterm=NONE
    hi SpellCap ctermbg=white ctermfg=darkred cterm=undercurl
    hi SpellLocal ctermbg=white ctermfg=darkyellow cterm=undercurl
    hi SpellRare ctermbg=white ctermfg=darkgreen cterm=undercurl
    hi ColorColumn ctermbg=black ctermfg=white cterm=NONE
    hi SignColumn ctermbg=white ctermfg=black cterm=NONE
    hi ErrorMsg ctermbg=darkred ctermfg=white cterm=NONE
    hi ModeMsg ctermbg=white ctermfg=darkgreen cterm=NONE
    hi MoreMsg ctermbg=white ctermfg=darkgreen cterm=NONE
    hi Question ctermbg=white ctermfg=black cterm=NONE
    hi Cursor ctermbg=black ctermfg=white cterm=NONE
    hi CursorColumn ctermbg=darkyellow ctermfg=white cterm=NONE
    hi Conceal ctermbg=white ctermfg=black cterm=NONE
    hi ToolbarLine ctermbg=white ctermfg=black cterm=NONE
    hi ToolbarButton ctermbg=white ctermfg=black cterm=NONE
    hi debugPC ctermbg=white ctermfg=black cterm=NONE
    hi debugBreakpoint ctermbg=white ctermfg=black cterm=NONE
endif

hi link EndOfBuffer NonText
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link VisualNOS Visual
hi link WarningMsg Error
hi link CursorIM Cursor
hi link QuickFixLine CursorLine
hi link Terminal Normal

let g:terminal_ansi_colors = [
        \ '#000000',
        \ '#870000',
        \ '#00875f',
        \ '#878700',
        \ '#005faf',
        \ '#875faf',
        \ '#008080',
        \ '#bcbcbc',
        \ '#3a3a3a',
        \ '#d7005f',
        \ '#00D75F',
        \ '#D7D787',
        \ '#5fafff',
        \ '#d787ff',
        \ '#87ff87',
        \ '#ffffff',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
