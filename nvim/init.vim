call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

let mapleader =","
set number relativenumber
map <leader>o :setlocal spell! spelllang=en_us<CR>
set splitbelow splitright
set ts=4 sw=4
set history=1000
set undolevels=1000
colorscheme gruvbox
set viminfo+=n~/.config/nvim/viminfo
let g:indentLine_char = '|'
"let g:lightline = {'colorscheme': 'seoul256'}
