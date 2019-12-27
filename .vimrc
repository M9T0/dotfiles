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
set noswapfile

let g:vimplugdir = expand('~/.vim/plugged/vim-plug')
set rtp+=g:vimplugdir
if !isdirectory(g:vimplugdir)
    echo 'install vim-plug...'
    call mkdir(g:vimplugdir, 'p')
    call system('git clone https://github.com/junegunn/vim-plug.git ' . g:vimplugdir . '/autoload')
end

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug', { 'dir': g:vimplugdir . '/autoload' }
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
Plug 'udalov/kotlin-vim'
call plug#end()

filetype plugin indent on
syntax enable

colorscheme nova
