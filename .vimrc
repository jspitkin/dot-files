" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine' " Indention vertical lines
Plug 'google/vim-searchindex' " Display number of search matches
Plug 'pangloss/vim-javascript' " Javascript indentation and syntax support
Plug 'ajh17/VimCompletesMe'   " Tab completetion

call plug#end()

" Color scheme
syntax enable
set background=dark
let g:gruvbox_bold=0
let g:gruvbox_dark_contrast="medium"
colorscheme gruvbox

" Key mappings
let mapleader = ","
" Pane navigation
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
" Buffer navigation
nnoremap <C-F> :bnext<CR>
nnoremap <C-D> :bprevious<CR>
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
" Redo
nnoremap U <C-R>
" Autocomplete 
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Formatting
set nowrap
set autoindent " Auto tab on a new line in code blocks
set shiftwidth=2 " Indenting of 2 spaces
set expandtab " Replace tabs with spaces
set softtabstop=2 " Backspace deletes indent
set tabstop=2 " Indentation every two columns

" Status line
set laststatus=2
set statusline=%y\ %.80f " Path and file type
set statusline+=%=        " Switch to the right side
set statusline+=Ln\ %4l\ Col\ %4c  " Line number and column number

" Searching 
set path+=**
set wildmenu " Show list
set wildmode=list:longest,full " Command <Tab> completion
set hlsearch " Highlight search terms
set incsearch " Find as you type in search
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uppercase present
set nohlsearch " Don't highlight search results

" Misc
set wildmode=full " File explorer
set clipboard=unnamed " Share clipboards
set encoding=utf-8 " Text encoding
set nu " Line numbers
set backspace=indent,eol,start " Make backspace work normally
set mouse=a " Enable mouse usage
set mousehide " Hide mouse when typing
set scrolljump=5 " Scroll 5 lines when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below the cursor
" Retain cursor position after a yank
vmap y ygv<Esc>
" Remove help menu
nmap <F1> <nop> 
nmap <Help> <nop>
let g:indentLine_char = '│' " Use a bar for indent guide
set shortmess+=A " Disable swap file messages
set formatoptions-=cro " Disable comment marker on new line
" Change end of buffer to terminal background color
silent! set termwinkey=<C-H>
" Detect file types
filetype plugin indent on
" Add new vertical split to the right or below
set splitright
set splitbelow

" File explorer
let g:netrw_liststyle = 3 " File browser display preference
let g:netrw_banner = 0 " Remove file browser banner

" JSX
" Make opening and closing tags same color
highlight link xmlEndTag xmlTag

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
  let cur_line = line('.')
  execute "%s/" . a:before . "/" . a:after . "/gc"
  execute cur_line
endfunction
" :Far <word to replace> <replace with>
command! -nargs=* Far call s:FindAndReplace(<f-args>)

" Find and replace exactly 'before' with 'after'
function! s:FindAndReplaceExact(before, after)
  let cur_line = line('.')
  execute "%s/\\<" . a:before . "\\>/" . a:after . "/gc"
  execute cur_line
endfunction
" :Fare <word to replace> <replace with>
command! -nargs=* Fare call s:FindAndReplaceExact(<f-args>)
