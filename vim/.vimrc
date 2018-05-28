set nocompatible

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

set tabstop=4

set laststatus=2

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/max/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/max/.vim/bundle')
  call dein#begin('/home/max/.vim/bundle')

  " Let dein manage dein
  " Required:
  call dein#add('/home/max/.vim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('altercation/vim-colors-solarized')
  
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

