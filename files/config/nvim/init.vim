"ping All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
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

syntax on
filetype plugin indent on

let mapleader=","

let &guicursor = 'n-v-c-sm:block-blinkwait1000-blinkon500-blinkoff500,'
        \          . 'i-c-ci-ve:ver25-blinkwait1000-blinkon500-blinkoff500,'
        \          . 'r-cr-o:hor20-blinkwait1000-blinkon500-blinkoff500'

if (has("termguicolors"))
  set termguicolors
endif

set title
set scrolloff=3
set background=dark

set number
set ruler
set wrap

set showcmd
set t_Co=256
set smartindent
set cursorline
set bs=2

""Recherche
set smartcase
set ignorecase
set incsearch
set hlsearch

"-- Beep
set visualbell
set noerrorbells

""Indent with spaces
set expandtab
set softtabstop=2
set shiftwidth=2


"set encoding=utf8
set fileencoding=utf-8
set encoding=UTF-8
set foldmethod=syntax
set linebreak

call plug#begin('~/.config/nvim/plugged')

"Esthetic
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'godlygeek/tabular'
Plug 'ryanoasis/vim-devicons'
Plug 'yggdroot/indentline'

"Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'

"Completion
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'

"Settings and efficiency
Plug 'junegunn/fzf'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/YankRing.vim'

"For Tmux navigating seamingless
Plug 'christoomey/vim-tmux-navigator'

"For JavaScript syntax handling
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'

"Fixer/Linter
Plug 'w0rp/ale'

"Not using
"Plug 'easymotion/vim-easymotion'
"Plug 'tmhedberg/simpylfold'
call plug#end()

"--Molokai colorscheme
"let g:rehash256 = 1
"let g:molokai_original = 1
"colorscheme molokai

"-- Ayu colorscheme
"let ayucolor="light"
let ayucolor="mirage"
"let ayucolor="dark"
colorscheme ayu

"colorscheme one
"colorscheme palenight
"colorscheme gruvbox
"colorscheme onedark
""""""""""""""""""""""KEYMAP"""""""""""""""""""""""
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
vnoremap <M-s> :sort<CR>
nnoremap <M-f> :ALEFix<CR>
nmap <F2> :r !xsel -op<CR>


"-- unmap arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

"""""""""""""""""""""PLUGINS""""""""""""""""""""""

"Multiple-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
"ALE
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'json': ['eslint', 'prettier'],
\   'css': ['eslint', 'prettier'],
\   'java': ['uncrustify'],
\   'c': ['uncrustify'],
\}
let g:ale_linters = {
\   'javascript': ['eslint', 'prettier'],
\   'json': ['eslint'],
\}

"AirLine
"let g:airline_theme='one'
"let g:airline_theme='onedark'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
"Emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-e>'

autocmd FileType html,css,javascript EmmetInstall

"NerdTree
map <C-f> :NERDTreeToggle<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Yankring
let g:yankring_history_dir="$HOME"
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = ".nvim_yankring"
