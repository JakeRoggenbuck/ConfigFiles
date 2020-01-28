call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='onedark'

let mapleader =","

set number relativenumber

" sets spell check
map <leader>o :setlocal spell! spelllang=en_us<CR>

" removes trailing white space
map <leader>t :%s/ $//g

map <leader>z :NERDTree<CR>
map <leader>c :NERDTreeFocus<CR> 

set splitbelow splitright

set ts=4 sw=4

set history=1000
set undolevels=1000

