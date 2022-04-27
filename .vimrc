set nu
set colorcolumn=80
set mouse=a

set nohlsearch
set incsearch

set bg=dark
set syntax=on
filetype plugin indent on
filetype indent on
set ci

set wrap

set magic

filetype plugin indent on
set tabstop=4 softtabstop=4 softtabstop=4 shiftwidth=4

set smartcase
set hlsearch
set incsearch
set showmatch

set nocompatible

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tribela/vim-transparent'
Plug 'itchyny/vim-gitbranch'
Plug 'sheerun/vim-polyglot'
call plug#end()

syntax on

silent! TransparentEnable
colorscheme gruvbox
set background=dark
set cursorline

autocmd InsertEnter * set nu  rnu
autocmd InsertLeave * set nornu nu


autocmd BufEnter * set indentexpr=

set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \     'gitbranch':      'gitbranch#name',
      \     'readonly':       'LightlineReadonly',
      \     'filename':       'LightlineFilename',
      \ },
      \ }

function! LightlineReadonly()
  return &readonly && &filetype !=# 'help' ? 'RO' : ''
endfunction

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

silent! let w:m1=matchadd('ErrorMsg', '\%>80v.\+', -1)set lbr

set noshowmode
