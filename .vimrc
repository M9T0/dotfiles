set encoding=utf-8
set fileencodings=sjis,euc
set mouse=a

if &compatible
  set nocompatible
endif

syntax on

filetype plugin on

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

"" Unite
"インサートモードで開始
let g:unite_enable_start_insert=1
""ヒストリー/ヤンク機能を有効化
let g:unite_source_history_yank_enable =1
"prefix keyの設定
nmap <Space> [unite]

"スペースキーとaキーでカレントディレクトリを表示
nnoremap <silent> [unite]a :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"スペースキーとfキーでバッファと最近開いたファイル一覧を表示
nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer file_mru<CR>
"スペースキーとdキーで最近開いたディレクトリを表示
nnoremap <silent> [unite]d :<C-u>Unite<Space>directory_mru<CR>
"スペースキーとbキーでバッファを表示
nnoremap <silent> [unite]b :<C-u>Unite<Space>buffer<CR>
"スペースキーとrキーでレジストリを表示
nnoremap <silent> [unite]r :<C-u>Unite<Space>register<CR>
"スペースキーとtキーでタブを表示
nnoremap <silent> [unite]t :<C-u>Unite<Space>tab<CR>
"スペースキーとhキーでヒストリ/ヤンクを表示
nnoremap <silent> [unite]h :<C-u>Unite<Space>history/yank<CR>
"スペースキーとoキーでoutline
nnoremap <silent> [unite]o :<C-u>Unite<Space>outline<CR>
"スペースキーとENTERキーでfile_rec:!
nnoremap <silent> [unite]<CR> :<C-u>Unite<Space>file_rec:!<CR>
"giti
nnoremap <silent> [unite]gb :<C-u>Unite<Space>giti/branch<CR>
nnoremap <silent> [unite]gl :<C-u>Unite<Space>giti/log<CR>
nnoremap <silent> [unite]gs :<C-u>Unite<Space>giti/status<CR>
"Junkfile
nnoremap <silent> [unite]j :<C-u>Unite<Space>junkfile<CR>
"unite.vimを開いている間のキーマッピング
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
    " ESCでuniteを終了
    nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction"}}}

" rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" lightline
if !has('gui_running')
    set t_Co=256
endif
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ }

" colorscheme
colorscheme iceberg
