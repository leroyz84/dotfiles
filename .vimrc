set mouse=
set ttymouse=
" Syntax highlighting
syntax on
colorscheme Tomorrow-Night-Bright
" colorscheme Tomorrow-Night

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

set indentkeys-=0

"au BufNewFile,BufRead *.j2 set ft=jinja

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off
"
"
" let g:fzf_vim = {}
"let g:fzf_vim.preview_window = ['right,50%', 'ctrl-?']

" Ansible

call plug#end()

set expandtab
set ts=4
set sw=4
