" Enable encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" Plugin Block
call plug#begin('~/.vim/plugged')
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
"Plug 'vim-scripts/indentpython.vim'
Plug 'kergoth/vim-bitbake'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'jmcantrell/vim-virtualenv'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe'
Plug 'voldikss/vim-floaterm'
call plug#end()
" Plugin Block

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable folding
set foldmethod=indent
set foldlevel=99

" Bell settings
set visualbell
set noerrorbells

" Enable Monokai Theme.
" syntax enable
" colorscheme monokai

" Enable Dracula Theme.
if v:version > 802
  packadd! dracula
endif
syntax enable
colorscheme dracula

" NERDTree Configs
nnoremap <F2> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeWinPos = "left"

" Auto-complete
set completeopt=menuone,noinsert,noselect
set shortmess+=c
nnoremap <silent> K :call CocActionAsync('doHover')<CR>

" Python pep8
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType python nnoremap <buffer> <F5> :w<CR>:!python3 %<CR>

" Air line
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1

au BufNewFile,BufRead *.py
    \set tabstop=4
    \set softtabstop=4
    \set shiftwidth=4
    \set textwidth=79
    \set autoindent
    \set fileformat=unix

" Bad white space
highlight BadWhitespace ctermbg=red guibg=red
augroup BadSpace
  autocmd!
  autocmd VimEnter,WinEnter * call matchadd('BadWhitespace', '\s\+$')
  autocmd VimEnter,WinEnter * call matchadd('BadWhitespace', '\t')
augroup END

" Enable AutoCompleteMe(YCM)
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

" Siwtch between buffers and tabs
nnoremap gt :bnext<CR>
nnoremap gT :bprevious<CR>

" Copy all lines to system clipboard with Ctrl+A
nnoremap <C-a> :%y+<CR>

" Copy visually selected text to system clipboard with Ctrl+C
vnoremap <C-c> "+y

" Vim floaterm configs
nnoremap <C-t> :FloatermToggle<CR>
tnoremap <C-t> <C-\><C-n>:FloatermToggle<CR>

