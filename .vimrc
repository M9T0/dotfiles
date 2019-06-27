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

" deinがインストールされるディレクトリの指定
let s:dein_dir = expand('~/.cache/dein') "<- dein によってプラグインがインストールされるディレクトリ
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" deinがインストールされているかをチェック インストールされていなかったらdeinをダウンロードしてくる
if &runtimepath !~# '/dein.vim'
    if !isdirectory(s:dein_repo_dir)
        execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
    endif
    execute 'set runtimepath+=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')
    call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

    let g:rc_dir = expand('~/.vim/dein')
    let s:toml = g:rc_dir . '/dein.toml'
    call dein#load_toml(s:toml, {'lazy': 0})

    call dein#end()
    call dein#save_state()
endif

if dein#check_install()
    call dein#install()
endif

filetype plugin indent on
syntax enable

