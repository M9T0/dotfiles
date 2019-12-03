set encoding=utf-8
set mouse=a

if &compatible
    set nocompatible
endif

augroup MyAutoCmd
    autocmd!
augroup END

set shortmess+=I
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set ignorecase
set smartcase
set incsearch
set hlsearch

set laststatus=2
set wildmenu

set nobackup
set noundofile

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'for': ['go'] }
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'cespare/vim-toml', { 'for': ['toml'] }
Plug 'thinca/vim-quickrun'
Plug 'maximbaz/lightline-ale'
Plug 'cocopon/iceberg.vim'
Plug 'trevordmiller/nova-vim'
Plug 'junegunn/fzf'
Plug 'tpope/vim-fugitive'
Plug 'cocopon/vaffle.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'elixir-editors/vim-elixir'
call plug#end()

filetype plugin indent on
syntax enable

