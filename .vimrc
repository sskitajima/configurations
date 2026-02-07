""""" 基本設定 """""
" エンコーディング
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,sjis,euc-jp,iso-2022-jp

" 改行コード
set fileformat=unix
set fileformats=unix,dos,mac

" バックアップファイルを作成しない
set nobackup
set nowritebackup

set title

" タブとインデント
set expandtab
set tabstop=2
set smartindent

""""" 表示とUI """""
" カラースキーム
colorscheme delek

" 行番号の表示
set number

" 対応する括弧の表示
set showmatch

" 長い行を折り返さない
set nowrap

" 挿入モードでバックスペースで削除
set backspace=indent,eol,start

set ambiwidth=double

" クリップボード
set clipboard+=unnamedplus,unnamed

"""""" 検索 """""
" インクリメンタル検索
set incsearch

" 検索結果をハイライト表示
set hlsearch

" 大文字小文字を区別しない
set ignorecase

" ファイル末尾まで検索したら、ファイル先頭から再び検索
set wrapscan

inoremap jj <Esc>

" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy
