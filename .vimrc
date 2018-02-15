" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

"execute pathogen#infect()
filetype plugin indent on
syntax on
set nocompatible
set background=dark
set number
set showcmd
set ignorecase
set t_Co=256
"set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ruler
set bs=2
set encoding=utf8
set fileencoding=utf-8
set linebreak
colorscheme zerg
"colorscheme koehler
set laststatus=2

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'valloric/youcompleteme'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
call plug#end()

"PLUGINS"
"powerline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1

"indent_guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
