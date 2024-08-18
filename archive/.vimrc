set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dracula/vim',{'name': 'dracula'}
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
call vundle#end()            " required

filetype plugin indent on    " required

set t_Co=256

syntax on
set ruler
set wrap
set linebreak
set autoindent
set mousehide
set mouse=a
set hidden
set cursorline
set number
set colorcolumn=80

colorscheme dracula
