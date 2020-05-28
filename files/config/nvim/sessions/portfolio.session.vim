let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/projects/portfolio
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +31 src/components/App.js
badd +0 src/components/BoxTool.js
badd +0 src/components/MenuTab.js
badd +0 src/components/ProjectBox.js
badd +0 src/components/SkillList.js
badd +0 src/components/StatePoint.js
badd +0 src/components/TypingText.js
argglobal
%argdel
$argadd src/components/App.js
$argadd src/components/BoxTool.js
$argadd src/components/MenuTab.js
$argadd src/components/ProjectBox.js
$argadd src/components/SkillList.js
$argadd src/components/StatePoint.js
$argadd src/components/TypingText.js
edit src/components/ProjectBox.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("src/components/ProjectBox.js") | buffer src/components/ProjectBox.js | else | edit src/components/ProjectBox.js | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=12
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
27
normal! zo
28
normal! zo
29
normal! zo
30
normal! zo
31
normal! zo
32
normal! zo
45
normal! zo
57
normal! zo
57
normal! zo
70
normal! zo
70
normal! zo
72
normal! zo
73
normal! zo
74
normal! zo
76
normal! zo
87
normal! zo
87
normal! zo
87
normal! zo
87
normal! zo
87
normal! zo
87
normal! zo
88
normal! zo
90
normal! zo
92
normal! zo
let s:l = 60 - ((15 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
60
normal! 032|
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOF
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
