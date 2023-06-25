set expandtab ts=2 sw=2 bg=dark
colorscheme koehler
syntax on
set nocompatible
set mouse-=a
set hlsearch

highlight ColorColumn ctermbg=18
:noremap <F2> :call ShowColumn()<cr>
function! ShowColumn()
    let curcolumn = col(".")
    if &colorcolumn == l:curcolumn
        setlocal colorcolumn=
    else
        execute "setlocal colorcolumn=" . l:curcolumn
    endif
endfunction

