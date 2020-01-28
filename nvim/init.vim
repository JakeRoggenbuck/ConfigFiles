call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'

call plug#end()


let mapleader =","

set number relativenumber

" sets spell check
map <leader>o :setlocal spell! spelllang=en_us<CR>

" removes trailing white space
map <leader>t :%s/ $//g

set splitbelow splitright

set ts=4 sw=4

set history=1000
set undolevels=1000

