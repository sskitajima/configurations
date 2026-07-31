--------------------------
-- 基本設定
--------------------------
-- エンコーディング
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = 'utf-8,sjis,euc-jp,iso-2022-jp'
-- ※ init.vim の `scriptencoding=utf-8` は Lua ファイルには不要なため省略
--   (Lua スクリプトは常に UTF-8 として読み込まれる)

-- 改行コード
vim.opt.fileformat = 'unix'
vim.opt.fileformats = 'unix,dos,mac'

-- バックアップファイルを作成しない
vim.opt.backup = false

--------------------------
-- 表示とUI
--------------------------
-- カラースキーム
-- vim.cmd('colorscheme delek')

-- 長い行を折り返さない
vim.opt.wrap = false

-- 挿入モードでバックスペースで削除
vim.opt.backspace = 'indent,eol,start'

vim.opt.ambiwidth = 'double'

-- クリップボード
vim.opt.clipboard:append('unnamedplus,unnamed')

-- 対応する括弧やブレースを表示
vim.opt.showmatch = true
vim.opt.matchtime = 1

-- 折り返して表示
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- コメントの色を水色
vim.cmd('highlight Comment ctermfg=3')

-- シンタックスハイライト
vim.cmd('syntax on')

-- タイトルを表示
vim.opt.title = true

-- 行番号の表示
vim.opt.number = true

-- 編集中の行をハイライト
vim.opt.cursorline = true


--------------------------
-- 検索
--------------------------
-- インクリメンタル検索
vim.opt.incsearch = true

-- 検索結果をハイライト表示
vim.opt.hlsearch = true

-- 大文字小文字を区別しない
vim.opt.ignorecase = true

-- ファイル末尾まで検索したら、ファイル先頭から再び検索
vim.opt.wrapscan = true

--------------------------
-- クリップボードからのペースト
--------------------------
-- 挿入モードでクリップボードからペーストする時に自動でインデントさせないようにする
-- ※ このブロックは端末固有のブラケットペースト処理であり、Vimscript のまま実行する。
--   (Neovim はブラケットペーストを標準でサポートしているため、通常この設定は不要)
vim.cmd([[
if &term =~ "xterm"
  let &t_SI .= "\e[?2004h"
  let &t_EI .= "\e[?2004l"
  " let &pastetoggle = "\e[201~"

  function XTermPasteBegin(ret)
    set paste
    return a:ret
  endfunction

  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif
]])

--------------------------
-- タブとインデント
--------------------------
-- タブの代わりに空白文字を挿入する
vim.opt.expandtab = true

-- タブ文字の幅
vim.opt.tabstop = 2

-- vimが挿入するインデントの幅
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

--------------------------
-- その他
--------------------------
-- 他で書き換えられたら自動で読み直す
vim.opt.autoread = true

-- 入力中のコマンドを表示する
vim.opt.showcmd = true

-- コマンドモードでtabによるファイル名補完
vim.opt.wildmenu = true

-- 日本語入力がオンのままでも使えるコマンド(Enterキーは必要)
vim.keymap.set('n', 'あ', 'a', { noremap = true })
vim.keymap.set('n', 'い', 'i', { noremap = true })
vim.keymap.set('n', 'う', 'u', { noremap = true })
vim.keymap.set('n', 'お', 'o', { noremap = true })
vim.keymap.set('n', 'っd', 'dd', { noremap = true })
vim.keymap.set('n', 'っy', 'yy', { noremap = true })

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })

--------------------------
-- Plugin
--------------------------
-- ※ プラグイン管理はそのまま vim-plug を使用する (挙動を変えないため)
vim.cmd([[
call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
]])

--------------------------
-- Plugin Horizon
--------------------------
-- if you don't set this option, this color might not correct
vim.opt.termguicolors = true

vim.cmd('colorscheme horizon')

-- lightline
vim.g.lightline = {}
vim.g.lightline = { colorscheme = 'horizon' }

-- or this line
vim.g.lightline = { colorscheme = 'horizon' }

--------------------------
-- Plugin NERDTree
--------------------------
-- vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>')
-- vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
-- vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
-- vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')

--------------------------
-- Plugin git-gutter
--------------------------
vim.g.gitgutter_highlight_lines = 1

--------------------------
-- Plugin coc.nvim
--------------------------
vim.keymap.set('i', '<Tab>', function()
  return vim.fn['coc#pum#visible']() == 1 and vim.fn['coc#pum#next'](1) or '<Tab>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<S-Tab>', function()
  return vim.fn['coc#pum#visible']() == 1 and vim.fn['coc#pum#prev'](1) or '<S-Tab>'
end, { expr = true, silent = true })

vim.keymap.set('i', '<cr>', function()
  return vim.fn['coc#pum#visible']() == 1 and vim.fn['coc#pum#confirm']() or '<CR>'
end, { expr = true, silent = true })

