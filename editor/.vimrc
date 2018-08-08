se title
se ambiwidth=double
se tabstop=8
se expandtab
se shiftwidth=8
se smartindent
se list
se listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
se nrformats-=octal
se hidden
se virtualedit=block
se backspace=indent,eol,start
se number
se cursorline
se cursorcolumn
execute "set colorcolumn=".join(range(81, 9999), ',')

" for C language
se nocp incsearch
se autoindent
se cinoptions=:0,p0,t0
se cinwords=if,else,while,do,for,switch,case
"se formatoptions=tcgr
se cindent
syntax on
"source ~/.exrc

" status bar
se laststatus=2
se statusline=%F
se statusline+=%m
se statusline+=%r
se statusline+=%h
se statusline+=%w
se statusline+=%=
se statusline+=[ENC=%{&fileencoding}]
se statusline+=[LOW=%l/%L]
se statusline+=[COL=%c]

" color
hi Search ctermfg=white ctermbg=44
hi CursorColumn ctermfg=white ctermbg=black
hi ColorColumn ctermfg=white ctermbg=black
