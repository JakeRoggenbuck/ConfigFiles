call plug#begin('~/.vim/plugged')
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'junegunn/goyo.vim'
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
Plug 'airblade/vim-gitgutter'
Plug 'jakeroggenbuck/vim-character-creator'
Plug 'jakeroggenbuck/vim-selection-test'
Plug 'jakeroggenbuck/vim-snow-script-syntax'
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'junegunn/rainbow_parentheses.vim'
call plug#end()

let mapleader =","
set number
map <leader>o :setlocal spell! spelllang=en_us<CR>
set splitbelow splitright
set ts=4 sw=4
set history=1000
set undolevels=1000
colorscheme iceberg
set viminfo+=n~/.config/nvim/viminfo
let g:notes_directories = ['~/Library/vim-notes']
let g:sneak#label = 1
let g:choosewin_overlay_enable = 1

let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" Exit terminal mode
tnoremap <Esc> <C-\><C-n>

set updatetime=200

nmap <leader>-  <Plug>(choosewin)

function! g:GetFilePath()
  let path = expand('%:p')
  return path
endfunction

" Lint python using black
nmap <leader>l :execute ":!command black '" . g:GetFilePath() . "'"<CR>

" Pusho
nmap <leader>ps :!command git push origin $(git symbolic-ref --short HEAD)<CR>

" Lint using flake8
autocmd FileType python map <leader>lm :call flake8#Flake8()<CR>

" Toggle search highlighting
nmap <silent> <leader>/ :set hlsearch!<cr>

" Change current directory to the directory of the file in buffer
nmap <silent> <leader>cd :cd %:p:h<cr>:pwd<cr>

" Git files/ files
nmap <leader>gf :GFiles<CR>
nmap <leader>f :Files<CR>
" Git status
nmap <leader>gs :G<CR>

" Merge conflicts
nmap <leader>gdj :diffget //3<CR>
nmap <leader>gdf :diffget //2<CR>

" Move lines
nnoremap <leader>H :m-2<cr>==
nnoremap <leader>J :m+<cr>==
xnoremap <leader>K :m-2<cr>gv=gv
xnoremap <leader>L :m'>+<cr>gv=gv

" New buffer
nnoremap <leader>B :enew<cr>

" Change buffers
nnoremap <Tab> :bnext<cr>
nnoremap <S-Tab> :bprevious<cr>
" Cycle between last two open buffers
nnoremap <leader><leader> <c-^>

" Split window
nnoremap <silent> <C-h> :call WinMove('h')<cr>
nnoremap <silent> <C-j> :call WinMove('j')<cr>
nnoremap <silent> <C-k> :call WinMove('k')<cr>
nnoremap <silent> <C-l> :call WinMove('l')<cr>

function! WinMove(key)
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key,'[jk]'))
      wincmd v
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction

" Commit
nmap <leader>gc :Gcommit

" Add blank line
nmap <leader>po o<Esc>k
nnoremap <C-p> :GFiles<CR>

set nocompatible
filetype plugin on
syntax on
