set background=light

if version > 580
    highlight clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "manni"

" For explanation of highlight group names, see:
" http://vimdoc.sourceforge.net/htmldoc/syntax.html#highlight-groups
" For what the colors look like, see:
" https://jonasjacek.github.io/colors/

highlight TabLine           NONE
highlight TabLinefill       NONE
highlight Error             term=none      cterm=none   ctermfg=Black   ctermbg=Red
highlight StatusLine        term=none      cterm=none   ctermfg=White   ctermbg=Black
highlight StatusLineNC      term=none      cterm=none   ctermfg=Grey    ctermbg=Black

highlight DiffFile                         cterm=bold
highlight DiffLine                                      ctermfg=DarkCyan
highlight DiffAdded                                     ctermfg=DarkGreen
highlight DiffRemoved                                   ctermfg=DarkRed

highlight Normal            term=none      cterm=none   ctermfg=Black   ctermbg=255 "Grey93
highlight Comment           term=bold      cterm=none   ctermfg=244                 "Grey50
highlight Constant          term=underline cterm=none   ctermfg=124                 "Red3
highlight Label             term=underline cterm=none   ctermfg=124                 "Red3
highlight Special           term=bold      cterm=none   ctermfg=Black
highlight Identifier        term=underline cterm=none   ctermfg=Black
highlight Statement         term=bold      cterm=none   ctermfg=22                  "DarkGreen
highlight PreProc           term=underline cterm=none   ctermfg=94                  "Orange4
highlight Type              term=underline cterm=none   ctermfg=89                  "DeepPink4
highlight Visual            term=bold      cterm=none   ctermbg=251                 "Grey78
highlight Search            term=bold      cterm=none   ctermbg=224                 "MistyRose1
highlight CursorLine        term=none      cterm=none   ctermbg=254                 "Grey89
highlight Title             term=none      cterm=none   ctermfg=4                   "Navy
highlight Function          term=none      cterm=none   ctermfg=18                  "DarkBlue
highlight NonText           term=none      cterm=none   ctermfg=250                 "Grey74
highlight SpecialKey        term=none      cterm=none   ctermfg=250                 "Grey74
highlight LineNr            term=none      cterm=none   ctermfg=4                   "Navy

" Go
" ==

" Make things like %s the same color as string literals, but bold them
highlight goSpecialString   term=none      cterm=bold   ctermfg=124                 "Red3

" Make function and method calls the same color as function definitions
highlight goFunctionCall    term=none      cterm=none   ctermfg=18                  "DarkBlue
highlight goMethodCall      term=none      cterm=none   ctermfg=18                  "DarkBlue

