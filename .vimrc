set nocompatible
filetype off

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/
set rtp+=~/.fzf

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Github
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on


set colorcolumn=80
set t_Co=265

set number
"set ruler
set laststatus=2
set scrolloff=3
set undofile
"set wrap
set showtabline=2

syntax on
filetype indent on

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set fenc=utf-8
set autoindent

set mouse=a
set cursorline
"set cursorcolumn
"let g:molokai_original = 1
colorscheme molokai

set foldmethod=syntax
set nofoldenable
