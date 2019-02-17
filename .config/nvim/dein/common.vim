syntax enable
colorscheme ron
nnoremap <F7> gt
inoremap <F7> <ESC>gt
nnoremap <F6> gT
inoremap <F6> <ESC>gT
nnoremap 9 ^
nnoremap 0 $

" backspace delete
set backspace=indent,eol,start

" moving cursor
set whichwrap=b,s,h,l,<,>,[,]

" delete end of line space when :w
autocmd BufWritePre * :%s/\s\+$//ge

" one display readable
set number
set cursorline
" highlight clear CursorLine
set showmatch

" indent and tab
set cindent
setlocal smarttab
setlocal tabstop=4
setlocal shiftwidth=4

" set textwidth=80
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" status line
set previewheight=1
set laststatus=2

" serching word
set ignorecase
set smartcase
set completeopt=menuone,longest,preview
set pumheight=10

" filing
set autoread
set hidden
set showcmd

" split new tab below
set splitbelow

" encoding
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis,latin1
set fileformats=unix,dos,mac

inoremap <C-v> <ESC>"+gp
vnoremap <C-c> "+y

