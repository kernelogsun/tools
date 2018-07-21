set title
set ambiwidth=double
set tabstop=8
set expandtab
set shiftwidth=8
set smartindent
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
set nrformats-=octal
set hidden
set virtualedit=block
set backspace=indent,eol,start
set number

" for C language
set nocp incsearch
set autoindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
"set formatoptions=tcgr
set cindent
syntax on
"source ~/.exrc

" stats bar
set laststatus=2
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%h
set statusline+=%w
set statusline+=%=
set statusline+=[ENC=%{&fileencoding}]
set statusline+=[LOW=%l/%L]
set statusline+=[COL=%c]

hi Search ctermfg=white ctermbg=44
