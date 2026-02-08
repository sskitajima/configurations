"--------------------------
" 基本設定
"--------------------------
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

" タブとインデント
set expandtab
set tabstop=2
set shiftwidth=4
set smartindent

" コマンドモードでtabによるファイル名補完
set wildmenu

"--------------------------
" 表示とUI
"--------------------------
" カラースキーム
colorscheme delek

" 行番号の表示
set number

" タイトルの表示
set title

" 対応する括弧の表示
set showmatch matchline=1

" 長い行を折り返さない
set nowrap

" 挿入モードでバックスペースで削除
set backspace=indent,eol,start

set ambiwidth=double

" クリップボード
set clipboard+=unnamedplus,unnamed

" 対応する括弧やブレースを表示
set showmatch matchtime=1

" コメントの色を水色
hi Comment ctermfg=3

" 編集中の行のハイライト
set cursorline

" 挿入モードでクリップボードからペーストする時に自動でインデントさせないようにする
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"--------------------------
" 検索
"--------------------------
" インクリメンタル検索
set incsearch

" 検索結果をハイライト表示
set hlsearch

" 大文字小文字を区別しない
set ignorecase

" ファイル末尾まで検索したら、ファイル先頭から再び検索
set wrapscan

"--------------------------
" その他
"--------------------------
" 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap お o
nnoremap っd dd
nnoremap っy yy

inoremap jj <Esc>
