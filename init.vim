"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:config_dir = expand('~/.config/nvim/')
let s:dein_dir = expand('~/.config/nvim/dein')
set runtimepath^=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  let s:toml = expand('~/.config/nvim/.dein.toml')
  let s:lazy_toml = expand('~/.config/nvim/.dein_lazy.toml')
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

"Unite.vim--------------------------------
call unite#custom#source('file', 'matchers', "matcher_default")
nnoremap <silent> fls :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> fmr :<C-u>Unite file_mru buffer<CR>
nnoremap <silent> fbu :<C-u>Unite buffer<CR>
"End Unite.vim----------------------------

"Color------------------------------------
syntax on
colorscheme molokai

""
set number
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab
