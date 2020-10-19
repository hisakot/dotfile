" ==============================================================================
"                                  deoplete
" ==============================================================================
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete = 1
let g:deoplete#smart_case = 1
let g:deoplete#refresh_always = 1
call deoplete#custom#option({'auto_complete_delay':0, 'camel_case':1,
            \'ignore_case':1, 'max_list':500})

" Enterで補完を決定、または次へジャンプ
imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" :
            \ (pumvisible() ? "\<C-y>" :"\<CR>")
" Ctrl+Enterで次へジャンプ
imap <expr><C-CR> neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)" : "\<CR>"
" Tabで選択
imap <expr><TAB> pumvisible() ? "\<C-n>" :
              \ (neosnippet#jumpable() ? "\<Plug>(neosnippet_jump)" : "\<TAB>")
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
              \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"補完のShift-Tab
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
" Escで補完ポップアップを閉じて標準モード
inoremap <expr><Esc> pumvisible() ? deoplete#close_popup()."<Esc>" : "<Esc>"
