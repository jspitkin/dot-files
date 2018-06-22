" plugins
call plug#begin('~/.vim/plugged')


call plug#end()

" add new vertical split to the right or below
set splitright
set splitbelow

" split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" file explorer
set wildmode=full

" color scheme
syntax enable
set background=dark
colorscheme Solarized

" python
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set fileformat=unix

let python_highlight_all=1

" share clipboards
set clipboard=unnamed

" text encoding 
set encoding=utf-8

" line numbers
set nu

" make backspace work normally 
set backspace=indent,eol,start

" tab creates four white spaces
set nowrap
set autoindent
set shiftwidth=4
set expandtab
set softtabstop=4
set tabstop=4

" status line
set laststatus=2
set statusline=%y\ %.160F " path and file type
set statusline+=%=        " switch to the right side
set statusline+=Ln\ %4l\ Col\ %4c  " line number and column number

" searching 
set path+=**
set wildmenu
