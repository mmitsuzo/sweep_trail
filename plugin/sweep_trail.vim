" vim: set sw=2 ts=2 sts=2 et:
"
" Version: 1.0
" Author:  thinca-san
" License: VIM LICENSE

if exists('g:loaded_sweep_trail')
  finish
endif
let g:loaded_sweep_trail = 1

let s:save_cpo = &cpo
set cpo&vim

" plugin code ...

let &cpo = s:save_cpo
unlet s:save_cpo

command! -bar SweepTrail call sweep_trail#sweep()
nnoremap <silent> <Plug>(sweep_trail) :<C-u>SweepTrail<CR>
"nnoremap <leader>sw <Plug>(sweep_tail)

if !hasmapto('<Plug>(sweep_trail)')
      \ && (!exists('g:sweep_trail_no_default_key_mappings')
      \     || !g:sweep_trail_no_default_key_mappings)
  silent! map <unique> <Leader>sw <Plug>(sweep_trail)
endif

if !exists('g:sweep_trail_enable')
  let g:sweep_trail_enable = 1
endif

augroup plugin-sweep_trail
  autocmd!
  autocmd BufWritePre * call sweep_trail#auto_sweep()
augroup END

