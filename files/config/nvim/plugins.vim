call plug#begin('~/.config/nvim/plugged')

"Esthetic
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
Plug 'bling/vim-airline'


"Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'joshdick/onedark.vim'

"Completion
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'


"view of registers
Plug 'junegunn/vim-peekaboo'

"Settings and efficiency
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/YankRing.vim'

"For Tmux navigating seamingless
Plug 'christoomey/vim-tmux-navigator'
"Language handling
Plug 'sheerun/vim-polyglot'

"Not using
"Plug 'airblade/vim-gitgutter'
"Plug 'ap/vim-css-color'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'tpope/vim-fugitive'
"Plug 'kana/vim-textobj-user'
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
"Plug 'rakr/vim-one'
"Plug 'tomasr/molokai'
"Plug 'morhetz/gruvbox'
"Plug 'tomasiser/vim-code-dark'
call plug#end()



"Coc Vim
let g:coc_global_extensions=['coc-html','coc-css','coc-json','coc-phpls', 'coc-tabnine', 'coc-tsserver']
"coc-eslint
"coc-prettier

"ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'prettier-eslint', 'eslint'],
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

"Rainbow parentheses
let g:rainbow_active=1

let g:vim_markdown_conceal=0

"Multiple-cursor
let g:multi_cursor_use_default_mapping=0

"AirLine
"let g:airline_theme='ayu'

let g:airline#extensions#ale#enabled = 1
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


"Yankring
let g:yankring_history_dir="$HOME"
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = ".nvim_yankring"
