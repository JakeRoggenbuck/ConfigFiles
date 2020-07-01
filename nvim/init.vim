call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'baskerville/bubblegum'
Plug 'junegunn/fzf.vim'
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

map <leader>r :!command cargo run<CR>
map <leader>b :!command cargo run<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nnoremap <C-p> :GFiles<CR>

set nocompatible
filetype plugin on
syntax on
