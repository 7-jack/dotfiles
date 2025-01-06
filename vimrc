" line numbers
set number

" leader key remap
let mapleader=","

" Syntax highlighting
syntax enable

" Set tabs to be 4 spaces
set ts=4

" Expand tabs to be spaces
set expandtab

" Make backspace delete tabs
set softtabstop=4

" Depth of autoindent
set shiftwidth=4

" Auto indent
set autoindent

" Syntax highlighting
syntax on 

" ** Make backspaces more powerful
set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle 

set nocompatible "required
filetype off "required

" runtime path of Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' "required

" A Vim Plugin for Lively Previewing LaTeX PDF Output
Plugin 'xuhdev/vim-latex-live-preview'

" Rust
Plugin 'rust-lang/rust.vim'

" vim-tex
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on "required

" Allow mouse/trackpad scrolling
:set mouse=a

" For Zathura 
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_view_zathura_options = '-reuse-instance'
