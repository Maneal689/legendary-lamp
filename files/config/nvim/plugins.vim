call plug#begin('~/.config/nvim/plugged')

"Esthetic
Plug 'yggdroot/indentline'
Plug 'luochen1990/rainbow'
Plug 'itchyny/lightline.vim'

"Colorschemes
Plug 'joshdick/onedark.vim'

"Completion
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Plug 'raimondi/delimitmate'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'

"Settings and efficiency
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mbbill/undotree'

" Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/YankRing.vim'
Plug 'easymotion/vim-easymotion'
Plug 'bkad/CamelCaseMotion'

"For Tmux navigating seamingless
Plug 'christoomey/vim-tmux-navigator'
"Language handling
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'

"Not using
" Plug 'junegunn/vim-peekaboo'

" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'mlaursen/vim-react-snippets'
" Plug 'airblade/vim-gitgutter'
" Plug 'bling/vim-airline'
" Plug 'ap/vim-css-color'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-fugitive'
" Plug 'kana/vim-textobj-user'
" Plug 'godlygeek/tabular'
" Plug 'tpope/vim-endwise'
" Plug 'majutsushi/tagbar'
" Plug 'easymotion/vim-easymotion'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tmhedberg/simpylfold' (python plugin)

" Plug 'posva/vim-vue'
" Plug 'rakr/vim-one'
" Plug 'tomasr/molokai'
" Plug 'morhetz/gruvbox'
" Plug 'tomasiser/vim-code-dark'
" Plug 'ayu-theme/ayu-vim'
" Plug 'drewtempelmeyer/palenight.vim'
" Plug 'lifepillar/vim-solarized8'
" Plug 'tomasr/molokai'
" Plug 'junegunn/seoul256.vim'
" Plug 'dracula/vim', {'as': 'dracula'}
call plug#end()

" CamelCaseMotion
let g:camelcasemotion_key = '<leader>'

"Coc Vim
let g:coc_global_extensions=['coc-html','coc-css','coc-json','coc-phpls', 'coc-tsserver', 'coc-python', "coc-vimtex"]

"ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'prettier-eslint', 'eslint'],
\   'html': ['prettier'],
\   'css': ['prettier'],
\   'scss': ['prettier'],
\   'json': ['prettier'],
\   'xml': ['xmllint'],
\   'xsl': ['xmllint'],
\   'python': ["autopep8"]
\}

let g:ale_linters = {
\   'javascript': ['eslint'],
\}

let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

"Rainbow parentheses
let g:rainbow_active=1

"polyglot
let g:vim_markdown_conceal=0
let g:polyglot_disabled = ['nerdtree']

let g:vimtex_fold_enabled = 1
let g:tex_flavor = 'latex'

"Multiple-cursor
" let g:multi_cursor_use_default_mapping=0


"LightLine
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }


"AirLine
"let g:airline_theme='ayu'

" let g:airline#extensions#ale#enabled = 1
" let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#bufferline#enabled = 0
" let g:airline#extensions#tabline#show_buffers = 0
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline#extensions#tabline#show_splits = 0
"Emmet
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<C-e>'

" let g:webdevicons_conceal_nerdtree_brackets = 0
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ''

"Yankring
let g:yankring_history_dir="$HOME"
let g:yankring_clipboard_monitor=0
let g:yankring_history_file = ".nvim_yankring"
