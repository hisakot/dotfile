"preview_markdown
"Author: skanehira
"Licencse: MIT

if exists('g:loaded_preview_markdown')
            finish
endif
let g:loaded_preview_markdown = 1

let s:save_cpo = &cpo
set cpo&vim

command! -nargs? -compile=customlist,preview_markdown#compile PreviewMarkdown call preview_markdown#preview(<f-args>)

let &cpo = s:save_cpo
unlet s:save_cpo

"vim:set et:
