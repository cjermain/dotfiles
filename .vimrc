set termguicolors

" Set leader key
let g:mapleader="\<Space>"

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-signify'
Plug 'cocopon/iceberg.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme iceberg

filetype plugin on
filetype indent on

set autoread

" :W sudo saves the file
"command W w !sudo tee % > /dev/null

" Always show current position
set ruler

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" Set tenths of a second to blink when matching brackets
set mat=2

" Enable syntax highlighting
syntax enable

" Set UTF8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use spaces instead of tabs
set expandtab

" Use smart tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

" Set line numbering
set number

" Include tags file in .git directory
set tags+=.git/tags

set splitbelow
set splitright

" set the history to remember 200 entries
set history=200

" Lightline settings
let g:lightline = {}
let g:lightline.colorscheme = 'iceberg'

set showtabline=2 " Show tabline

" Signify settings
let g:signify_vcs_list = [ 'git' ]
let g:signify_realtime = 1

" fzf key mappings
nnoremap <silent> <leader>f :GFiles<CR>
nnoremap <silent> <leader>F :Files<CR>
nnoremap <silent> <leader>. :Files <C-r>=expand("%:h")<CR>/<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>h :History<CR>
nnoremap <silent> <leader>t :BTags<CR>
nnoremap <silent> <leader>T :Tags<CR>
nnoremap <silent> <leader>l :BLines<CR>
nnoremap <silent> <leader>L :Lines<CR>
nnoremap <silent> <leader>a :Ag<Space>
