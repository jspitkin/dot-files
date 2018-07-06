" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'google/vim-searchindex'

call plug#end()

" Color scheme
syntax enable
set background=dark
colorscheme lettuce

" Add new vertical split to the right or below
set splitright
set splitbelow

""" Key mappings
let mapleader = ","
" Pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Saving and closing the buffer
nmap <leader>s :w<CR>
nmap <leader>w :q<CR>
nmap <leader>sw :wq!<CR>
" Scrolling to wrapped lines
noremap j gj
noremap k gk
" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv
" Better horizontal scrolling
map zl zL
map zh ZH
" Paste on line below
nmap P :pu<CR>

""" Misc
set wildmode=full " File explorer
set clipboard=unnamed " Share clipboards
set encoding=utf-8 " Text encoding
set nu " Line numbers
set backspace=indent,eol,start " Make backspace work normally
set mouse=a " Enable mouse usage
set mousehide " Hide mouse when typing
set scrolljump=5 " Scroll 5 lines when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below the cursor
set showmatch " Show matching brackets and paren
" Retain cursor position after a yank
vmap y ygv<Esc>
" Remove help menu
nmap <F1> <nop> 
nmap <Help> <nop>
let g:indentLine_char = '│' " Use a bar for indent guide
set shortmess+=A " Disable swap file messages

" Formatting
set nowrap
set autoindent " Auto tab on a new line in code blocks
set shiftwidth=2 " Indenting of 2 spaces
set expandtab " Replace tabs with spaces
set softtabstop=2 " Backspace deletes indent
set tabstop=2 " Indentation every two columns

" Status line
set laststatus=2
set statusline=%y\ %.80F " Path and file type
set statusline+=%=        " Switch to the right side
set statusline+=Ln\ %4l\ Col\ %4c  " Line number and column number

""" Searching 
set path+=**
set wildmenu " Show list
set wildmode=list:longest,full " Command <Tab> completion
set hlsearch " Highlight search terms
set incsearch " Find as you type in search
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uppercase present
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

" Find and replace if contains 'before' with 'after'
function! s:FindAndReplace(before, after)
  execute "%s/" . a:before . "/" . a:after . "/gc"
endfunction
" :Far <word to replace> <replace with>
command! -nargs=* Far call s:FindAndReplace(<f-args>)

" Find and replace exactly 'before with 'after'
function! s:FindAndReplaceExact(before, after)
  execute "%s/\\<" . a:before . "\\>/" . a:after . "/gc"
endfunction
" :Fare <word to replace> <replace with>
command! -nargs=* Fare call s:FindAndReplaceExact(<f-args>)

" Python
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set expandtab |
	\ set fileformat=unix
let python_highlight_all=1
