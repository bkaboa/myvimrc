set nu
set colorcolumn=80
set mouse=a
syntax on

set lbr
set tw=80

filetype indent on
set ai
set ci
set wrap

set nohlsearch
set incsearch

set magic

set tabstop=4 softtabstop=4
set smartcase
set hlsearch
set incsearch
set showmatch
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'abhishekgahlot/vim-clangd'
call plug#end()

colorscheme gruvbox
set background=dark
set cursorline
