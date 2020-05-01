call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
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
