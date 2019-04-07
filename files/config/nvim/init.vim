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

filetype plugin indent on
syntax on

"Enable omni completion <C-x><C-o> to open menu <C-n> or <C-p> to navigate
"set omnifunc=syntaxcomplete#Complete

let &guicursor = 'n-v-c-sm:block-blinkwait1000-blinkon500-blinkoff500,'
        \          . 'i-c-ci-ve:ver25-blinkwait1000-blinkon500-blinkoff500,'
        \          . 'r-cr-o:hor20-blinkwait1000-blinkon500-blinkoff500'
set background=dark
set number
set showcmd
set smartcase
set t_Co=256
set smartindent

""Indent with spaces
set expandtab
set softtabstop=2
set shiftwidth=2

""Indent with tabs
"set shiftwidth=4
"set tabstop=4

set ruler
set cursorline
set bs=2
"set encoding=utf8
set fileencoding=utf-8
set encoding=UTF-8
set linebreak
set foldmethod=syntax

"colorscheme zerg
"colorscheme darkest-space

call plug#begin('~/.config/nvim/plugged')

"Esthetic
Plug 'ap/vim-css-color'
Plug 'bling/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
Plug 'tomasr/molokai'
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'

"Plug 'joshdick/onedark.vim'
"Completion
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'
"
"Settings and efficiency
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-eunuch'
Plug 'terryma/vim-multiple-cursors'
"For Tmux navigating seamingless
Plug 'christoomey/vim-tmux-navigator'
"For JavaScript syntax handling
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
"
"For Python synthax folding
"Plug 'tmhedberg/simpylfold'
"
"Fixer/Linter
Plug 'w0rp/ale'

"Not using
"Plug 'tpope/vim-surround'
"Plug 'easymotion/vim-easymotion'
call plug#end()


"KEYMAP
"map <End> <Esc>A
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
vnoremap <M-s> :sort<CR>
nnoremap <M-f> :ALEFix<CR>
nmap <F2> :r !xsel -op<CR>

"""""""""""""""""""""PLUGINS""""""""""""""""""""""

"ALE
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'json': ['prettier', 'eslint'],
\   'css': ['prettier'],
\   'java': ['uncrustify'],
\   'c': ['uncrustify'],
\}


let g:ale_linters = {
\   'javascript': ['eslint'],
\   'json': ['eslint'],
\}

let g:ale_fix_on_save = 1

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

"colorscheme onedark

"AirLine
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1


"indent_guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"Emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-e>'

autocmd FileType html,css,javascript,ejs,php,hbs EmmetInstall

"NerdTree
map <C-f> :NERDTreeToggle<CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"Yankring
"let g:yankring_history_dir="$HOME"
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = ".nvim_yankring"
