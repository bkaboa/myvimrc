set nu
set colorcolumn=80
set mouse=a
syntax on
silent! let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)set lbr

filetype off
set ai
set si

set ci
set wrap

set nohlsearch
set incsearch

set magic

filetype plugin indent on
set tabstop=4 softtabstop=4 softtabstop=4 shiftwidth=4
set expandtab

set smartcase
set hlsearch
set incsearch
set showmatch
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tribela/vim-transparent'
Plug 'sheerun/vim-polyglot'
call plug#end()

silent! TransparentEnable
colorscheme gruvbox
set background=dark
set cursorline

autocmd InsertEnter * set nu  rnu
autocmd InsertLeave * set nornu nu

set nocompatible

let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['autoindent']

autocmd BufEnter * set indentexpr=
