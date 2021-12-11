set nu
set colorcolumn=80
set mouse=a
syntax on
set tabstop=4 softtabstop=4
set smartcase
set smartindent
set incsearch
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'tree-sitter/tree-sitter'
call plug#end()

colorscheme gruvbox
set background=dark
set cursorline
