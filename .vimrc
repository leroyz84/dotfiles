set mouse=
set ttymouse=
" Syntax highlighting
syntax on

" numbers with distance
set relativenumber


" spellcheck, default turn off, only with .txt or md
set nospell
set spelllang=nl
"set spelllang=en


" detect files
filetype plugin indent on

" make backspace behave as expected
set backspace=indent,eol,start

" don't nag about unsaved buffer, when jumping to other file
set hidden


let $RTP=split(&runtimepath, ',')[0]
let $RC="$HOME/.vim/vimrc"


" :find file, could be performance issue
set path=.,**
syntax on

" Always remove unwanted trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

set indentkeys-=0#

