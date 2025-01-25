"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. Install vim
" 2. Install vim-plug (iff the install script below doesn't work)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Generic

" Enable line numbers
set number

" Syntax highlighting
syntax enable

" TODO: leader key remap
let mapleader=","

" Set tabs to be 4 spaces and expand to spaces
set ts=4
set expandtab

" Make backspace delete tabs
set softtabstop=4

" Depth of autoindent
set shiftwidth=4

" Auto indent
set autoindent

" Make backspaces more powerful
set backspace=indent,eol,start

" Allow mouse/trackpad scrolling
:set mouse=a

" Allow ruler info
:set ruler

" Pretty print
:set encoding=utf-8

" wildmenu for file navigation
set wildmenu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug

" Automatic installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

filetype plugin indent on

call plug#begin()

" UltiSnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" TODO: want split window?
let g:UltiSnipsEditSplit="vertical"

" Rust
Plug 'rust-lang/rust.vim'

" VimTex
Plug 'lervag/vimtex'
let g:vimtex_view_method = 'skim'

call plug#end()

