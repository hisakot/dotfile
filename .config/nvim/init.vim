" ==============================================================================
"                                  Entry Point
" ==============================================================================

filetype on

python3 import sys

" ===== Dein settings =====
" Be iMproved
 if &compatible
 	set nocompatible
 endif

" Set dein cache path and dein config dir
let g:dein_cache_path = expand('~/.cache/dein/')
let g:dein_config_dir = expand('~/.config/nvim/dein/')

" Set dein.vim directory
let s:dein_dir = g:dein_cache_path . 'repos/github.com/Shougo/dein.vim'

" Clone dein.vim if it does not exist
if !isdirectory(s:dein_dir)
	" Create parent directory
	call mkdir(fnamemodify(s:dein_dir, ':h'), 'p')

	"Clone dein.vim
	let s:cmd = 'GIT_CONFIG_GLOBAL=/dev/null git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_dir)
	let s:result = system(s:cmd)

	" Check clone result
	if v:shell_error != 0
		echohl ErrorMsg
		echomsg 'Failed to install dein.vim'
		echomsg s:result
		echohl None
		finish
	endif
endif

" Add dein.vim to runtime path
if isdirectory(s:dein_dir)
	execute 'set runtimepath^=' . fnameescape(s:dein_dir)
else
	echohl ErrorMsg
	echomsg 'dein.vim directory not found: ' . s:dein_dir
	echohl None
	finish
endif

" Load plugins
if dein#load_state(g:dein_cache_path)
    call dein#begin(g:dein_cache_path)

    " Basic plugins
    call dein#load_toml(g:dein_config_dir . 'dein.toml', {'lazy': 0})
    " Lazy plugins
    call dein#load_toml(g:dein_config_dir . 'dein_lazy.toml', {'lazy': 1})

    call dein#end()
    call dein#save_state()
endif

" Install plugins
 if dein#check_install()
     call dein#install()
 endif

" Install Python3 for nvim
if has("nvim") && !has("python3")
    echo 'install neovim python3'
    call system('sudo pip3 install neovim')
endif

syntax on
filetype plugin indent on

" ===== Common settings =====
execute 'source' g:dein_config_dir . 'common.vim'

" ===== provider =====
" let g:loaded_python_provider = 0
" let g:loaded_perl_provider = 0

" Highlight special words as TODO
augroup DebugHighlight
    au!
    autocmd BufEnter * match TODO /\<HACK\|REVIEW\|OPTIMIZE\|CHANGED\|WARNING\>/
augroup END
