""""""""""""""""""""""KEYMAP"""""""""""""""""""""""
nnoremap <Leader>ss :call SaveSession()<CR>
nnoremap <Leader>so :so ~/.vimrc<CR>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
vnoremap <M-s> :sort<CR>

"nnoremap <M-f> :CocCommand prettier.formatFile<CR>
"nnoremap <M-e> :CocCommand eslint.executeAutofix<CR>
nnoremap <M-f> :ALEFix<CR>
nnoremap <M-e> :ALELint<CR>

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

"-- Fzf keymaps
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
nnoremap <Leader>frg :Rg<CR>

"nnoremap <Leader>gs :Gstatus<CR>
"nnoremap <Leader>gc :Gcommit<CR>
"nnoremap <Leader>gp :Gpush<CR>
