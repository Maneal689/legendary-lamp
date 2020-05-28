"ping All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.  runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

let mapleader=","

"Get functions
source $HOME/.config/nvim/functions.vim

"Get filetype specific settings
source $HOME/.config/nvim/ft.vim

"Get plugin install and configuration
source $HOME/.config/nvim/plugins.vim

"Get keymapping
source $HOME/.config/nvim/keymaps.vim

syntax on
filetype plugin indent on
set termguicolors
let &guicursor = 'n-v-c-sm:block-blinkwait1000-blinkon500-blinkoff500,'
      \          . 'i-c-ci-ve:ver25-blinkwait1000-blinkon500-blinkoff500,'
      \          . 'r-cr-o:hor20-blinkwait1000-blinkon500-blinkoff500'

set title
set scrolloff=3
set background=dark

set number
set ruler
set wrap

set showcmd
set smartindent
set cursorline
set bs=2

""Recherche
set smartcase
set ignorecase
set incsearch
set hlsearch

"-- Beep
"set visualbell
set noerrorbells

""Indent with spaces
set expandtab
set softtabstop=2
set shiftwidth=2


"set encoding=utf8
set fileencoding=utf-8
set encoding=UTF-8

set foldmethod=syntax
set foldlevelstart=0

set linebreak

"-- Ayu colorscheme
"let ayucolor="light"
"let ayucolor="mirage"
"let ayucolor="dark"
"let g:palenight_terminal_italics=1

" colorscheme molokai
" colorscheme seoul256
" colorscheme solarized8
" colorscheme onedark
colorscheme dracula

autocmd FileType vue,html,css,javascript,php,xslt,xml EmmetInstall
