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

filetype plugin indent on
syntax on
"set nocompatible
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
set laststatus=2
set foldmethod=syntax

"colorscheme zerg
"colorscheme darkest-space

call plug#begin('~/.config/nvim/plugged')

"Esthetic
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
"Completion
Plug 'valloric/youcompleteme'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'rstacruz/sparkup'
Plug 'jiangmiao/auto-pairs'
"Shortcuts
Plug 'scrooloose/nerdcommenter'
"Settings and efficiency
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/YankRing.vim'
Plug 'majutsushi/tagbar'
Plug 'pangloss/vim-javascript'
Plug 'tmhedberg/simpylfold'
Plug 'w0rp/ale'

"Not using
"Plug 'tpope/vim-surround'
"Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-fugitive'
call plug#end()


"PLUGINS"

"gruvbox
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox
"powerline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
"indent_guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"UltiSnip Shortcut
let g:UltiSnipsExpandTrigger="<c-l>"
"tagbar keybind
nmap <F8> :TagbarToggle<CR>
"Yankring
"let g:yankring_history_dir="$HOME"
let g:yankring_history_file = ".nvim_yankring"
"ALE Fixers
"let g:ale_fixers = [
"\   'clang-format',
"\   'eslint',
"\]
