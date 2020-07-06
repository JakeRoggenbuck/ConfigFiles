call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'baskerville/bubblegum'
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'justinmk/vim-sneak'
Plug 'nvie/vim-flake8'
Plug 'mhartington/oceanic-next'
Plug 'cocopon/iceberg.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'roosta/srcery'
Plug 'joshdick/onedark.vim'
Plug 'ajh17/spacegray.vim'
Plug 't9md/vim-choosewin'
call plug#end()

let mapleader =","
set number
map <leader>o :setlocal spell! spelllang=en_us<CR>
set splitbelow splitright
set ts=4 sw=4
set history=1000
set undolevels=1000
colorscheme gruvbox
set viminfo+=n~/.config/nvim/viminfo
let g:notes_directories = ['~/Library/vim-notes']
let g:sneak#label = 1
let g:choosewin_overlay_enable = 1

nmap  -  <Plug>(choosewin)
nmap <leader>r :!command cargo run<CR>
nmap <leader>b :!command cargo run<CR>

" prefix with s: for local script-only functions
function! g:Initialize()
  let lint = expand('%:p')
  return lint
endfunction

nmap <leader>l :execute ":!command black '" . g:Initialize() . "'"<CR>

nmap <leader>ps :!command git push origin $(git symbolic-ref --short HEAD)<CR>

autocmd FileType python map <leader>lm :call flake8#Flake8()<CR>

nmap <leader>f :GFiles<CR>
nmap <leader>gs :G<CR>

nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>

nmap <leader>po o<Esc>k
nnoremap <C-p> :GFiles<CR>

set nocompatible
filetype plugin on
syntax on
