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
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
Plug 'bling/vim-airline'
Plug 'ap/vim-css-color'


"Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'flrnprz/plastic.vim'
Plug 'jaredgorski/SpaceCamp'

"Completion
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'

"Settings and efficiency
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
"view of registers
Plug 'junegunn/vim-peekaboo'

Plug 'kana/vim-textobj-user'

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/YankRing.vim'

"For Tmux navigating seamingless
Plug 'christoomey/vim-tmux-navigator'
"Language handling
Plug 'sheerun/vim-polyglot'

"Not using
"Plug 'terryma/vim-multiple-cursors'
"Plug 'godlygeek/tabular'
"Plug 'tpope/vim-endwise'
"Plug 'majutsushi/tagbar'
"Plug 'easymotion/vim-easymotion'
"Plug 'ryanoasis/vim-devicons'
"Plug 'scrooloose/nerdtree'
"Plug 'tmhedberg/simpylfold' (python plugin)
"Plug 'pangloss/vim-javascript'
"Plug 'othree/javascript-libraries-syntax.vim'
"Plug 'mxw/vim-jsx'
"
"Plug 'posva/vim-vue'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'rakr/vim-one'
"Plug 'tomasr/molokai'
"Plug 'morhetz/gruvbox'
"Plug 'joshdick/onedark.vim'
"Plug 'tomasiser/vim-code-dark'
call plug#end()

"-- Ayu colorscheme
"let ayucolor="light"
let ayucolor="mirage"
"let ayucolor="dark"
let g:palenight_terminal_italics=1

colorscheme palenight
"colorscheme plastic
"colorscheme ayu
"colorscheme spacecamp_lite

""""""""""""""""""""""KEYMAP"""""""""""""""""""""""
nnoremap <Leader>so :so ~/.vimrc<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
vnoremap <M-s> :sort<CR>
nnoremap <M-f> :CocCommand prettier.formatFile<CR>
nnoremap <M-e> :CocCommand eslint.executeAutofix<CR>

"-- Move lines
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"-- unmap arrow keys
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

"nnoremap <C-f> :NERDTreeToggle<CR>
"nnoremap <F8> :TagbarToggle<CR>

nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fF :GFiles<CR>
nnoremap <Leader>fb :Buffers<CR>
nnoremap <Leader>fh :History<CR>
nnoremap <Leader>ft :BTags<CR>
nnoremap <Leader>fT :Tags<CR>
nnoremap <Leader>fl :BLines<CR>
nnoremap <Leader>fL :Lines<CR>
nnoremap <Leader>f' :Marks<CR>
nnoremap <Leader>fag :Ag<CR>

nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gc :Gcommit<CR>
nnoremap <Leader>gp :Gpush<CR>

"""""""""""""""""""""PLUGINS""""""""""""""""""""""

"Coc Vim
let g:coc_global_extensions=['coc-html','coc-css','coc-json','coc-eslint','coc-prettier','coc-tsserver','coc-tabnine']

"Rainbow parentheses
let g:rainbow_active=1
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

"AirLine
let g:airline_theme='ayu'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_splits = 0
"Emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-e>'

autocmd FileType vue,html,css,javascript,php EmmetInstall

"Yankring
let g:yankring_history_dir="$HOME"
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = ".nvim_yankring"


"TextObj
call textobj#user#plugin('variableword', {
      \'word': {
      \ 'pattern': '[A-Z]\{0,1}[a-z]*',
      \ 'select': ['iv', 'av'],
      \},
      \})
