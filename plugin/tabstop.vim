" Tricks for using git in vim
" Maintainer:	ZOU Bin <zoubin04@gmail.com>
" Contributor: zoubin
" Repository: https://github.com/zoubin/vim-tabstop
" License: MIT

" Usage:
" mapping
" noremap <unique> <leader>r :call TabstopNext()<CR>
" command
" :call 

if exists("g:loaded_tabstop")
  finish
endif
let g:loaded_tabstop = 1

if exists("g:tabstop_alternatives")
  let s:tabstop_alternatives = g:tabstop_alternatives
else
  let s:tabstop_alternatives = [4, 2]
endif
let s:index = 0
let s:len = len(s:tabstop_alternatives)

function! s:tabstop(n)
  if a:n == ""
    call s:next()
  else
    call s:set(a:n)
  endif
endfunction

function! s:set(n)
  " 缩进为4个空格宽度
  exec "set tabstop=" . a:n
  "自动缩进使用的空格数
  exec "set shiftwidth=" . a:n
  "编辑插入tab时，把tab算作的空格数
  exec "set softtabstop=" . a:n
  "Insert模式下插入<Tab>时用space替代。相关缩进也使用space
  set expandtab
endfunction

function! s:next()
  call s:set(s:tabstop_alternatives[s:index])
  let s:index = (s:index + 1) % s:len
endfunction

call s:next()

com! -nargs=? Tabstop call s:tabstop(<q-args>)
