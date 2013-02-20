"vi互換をオフ
set nocompatible

" 日本語の設定
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis

" 色の設定
hi DiffAdd    ctermfg=black ctermbg=2
hi DiffChange ctermfg=black ctermbg=3
hi DiffDelete ctermfg=black ctermbg=6
hi DiffText   ctermfg=black ctermbg=7

"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
"set list
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
