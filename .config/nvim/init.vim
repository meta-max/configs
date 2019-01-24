set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'

call plug#end()

" Basics
set number
set relativenumber
set backspace=indent,eol,start
set noswapfile

" Searching
set ignorecase
set smartcase
set incsearch
set nohlsearch

" Leader remap
let mapleader=','

" Tabs
set tabstop=4
set shiftwidth=4
set smarttab
filetype indent on

" Colors
syntax on
set background=dark

" Simple esc remap
inoremap jw <Esc>
inoremap wj <Esc>

" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Shortcuts for navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Delete trailing whitespace at the end of a line
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

noremap <leader>w :call DeleteTrailingWS()<CR>

" Sort lines by alphabetical order
func! Alphabetical()
	visual ip
	:sort
endfunc

noremap <leader>s :call Alphabetical()<CR>

" Easier navigation between tabs
nnoremap <C-h> gT
nnoremap <C-l> gt

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
