" vim: set sw=2 ts=2 sts=2 et tw=78 :
" About:   delete spaces at the end of line
" Version: 1.0
" Author:  thinca-san
" License: VIM LICENSE

let s:save_cpo = &cpo
set cpo&vim

function! sweep_trail#sweep()
  let save_cursor = getpos('.')
  let save_last_search = getreg('/')
  try
    %substitute/\s\+$//e
  finally
    call setpos('.', save_cursor)
    call setreg('/', save_last_search)
  endtry
endfunction

function! sweep_trail#auto_sweep()
  if g:sweep_trail_enable && &modifiable
    call sweep_trail#sweep()
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

