" plugins
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'

call plug#end()

" color scheme
syntax enable
set background=dark
colorscheme lettuce

" add new vertical split to the right or below
set splitright
set splitbelow

" key mappings
let mapleader = ","
" pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" saving and closing the buffer
nmap <leader>s :w<CR>
nmap <leader>w :q<CR>
nmap <leader>sw :wq!<CR>
" scrolling to wrapped lines
noremap j gj
noremap k gk
" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" better horizontal scrolling
map zl zL
map zh ZH

" misc
set wildmode=full " file explorer
set clipboard=unnamed " share clipboards
set encoding=utf-8 " text encoding
set nu " line numbers
set backspace=indent,eol,start " make backspace work normally
set mouse=a " enable mouse usage
set mousehide " hide mouse when typing
set scrolljump=5 " Scroll 5 lines when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below the cursor
set showmatch

" formatting
set nowrap
set autoindent " auto tab on a new line in code blocks
set shiftwidth=2 " indenting of 2 spaces
set expandtab " replace tabs with spaces
set softtabstop=2 " backspace deletes indent
set tabstop=2 " indentation every two columns

" status line
set laststatus=2
set statusline=%y\ %.80F " path and file type
set statusline+=%=        " switch to the right side
set statusline+=Ln\ %4l\ Col\ %4c  " line number and column number

" searching 
set path+=**
set wildmenu " show list
set wildmode=list:longest,full " Command <Tab> completion
set hlsearch " highlight search terms
set incsearch " find as you type in search
set ignorecase "case insensitive search
set smartcase " case sensitive when uppercase present
noremap <CR> :noh<CR><CR>


" Restore cursor to file position in previous editing session
function! ResCur()
    if line("'\"") <= line("$")
        silent! normal! g`"
        return 1
    endif
endfunction

augroup resCur
        autocmd!
        autocmd BufWinEnter * call ResCur()
augroup END

" python
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set fileformat=unix
let python_highlight_all=1
