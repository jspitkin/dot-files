set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Begin Plugin Section 
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
" End Plugin Section

call vundle#end()            " required
filetype plugin indent on    " required

" Add UTF-8 encoding
set encoding=utf-8

" Color highlighting and themes
let python_highlight_all=1
set background=dark
colorscheme gruvbox
syntax on
set term=screen-256color

" Line numbering
set nu

" Turn off extra space and tab highlighting
set listchars=tab:»\ ,trail:\ 
set list
hi SpecialKey ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" Share a clipboard with the OS
set clipboard=unnamed      
