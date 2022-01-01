" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
call plug#end()

" DisplaySettings
colorscheme nord
set number
set background=dark
syntax enable

" Indent
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

