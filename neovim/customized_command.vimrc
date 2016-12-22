""" Jump to last edit
function! JumpToLastEdit()
  if line("'\"") <= line("$")
    normal! g`"
  endif
endfunction

if has("autocmd")
" Open spell checking when coding
  autocmd BufReadPre,BufNewFile *.c,*.h,*.java,*.py :setlocal spell spelllang=en

" Jump to last edit
  autocmd BufReadPost * call JumpToLastEdit()

" call SetSolarizedBackground()
  " autocmd BufWritePost * call SetSolarizedBackground()

" Auto make
  autocmd! BufWritePost * Neomake

"" NerdTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif
