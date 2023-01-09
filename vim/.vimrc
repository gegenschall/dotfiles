set nocompatible
filetype off
  
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-fugitive'
  Plug 'altercation/vim-colors-solarized'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
call plug#end()

filetype plugin indent on

set expandtab
set shiftwidth=2
set softtabstop=2

set number relativenumber
"set autoindent
set backspace=2

syntax enable
set background=dark
colorscheme solarized

set path+=**
set showmatch
set wildmode=full
set wildmenu

set mouse=a
