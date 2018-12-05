se title
se ambiwidth=double
se tabstop=4
se expandtab
se shiftwidth=4
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
se statusline+=[HEX=%02.2B]

" color
hi Search ctermfg=white ctermbg=44
hi CursorColumn ctermfg=white ctermbg=black
hi ColorColumn ctermfg=white ctermbg=black

"Dein.vim plugin
"
"How to
"1. $ git clone https://github.com/Shougo/dein.vim.git
"2. $ dein.vim/bin/installer.sh ~/.vim/dein
"3. Copy the dein Scripts...End desin Scripts to .vimrc
"ref: http://engineerspirit.com/2016/11/26/post-92/
"
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/root/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/root/.vim/dein')
  call dein#begin('/root/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/root/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

" C completion
" 1. Define next, and execute :call dein#install() on vim
call dein#add('justmao945/vim-clang')
