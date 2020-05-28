let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/perso/sandbox/web/sandbox
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +317 src/App.js
badd +51 src/components/DiceLauncher/DiceLauncher.js
badd +1 src/components/TabView/TabView.essential.css
badd +1 src/components/Carousel/Carousel.essential.css
badd +19 src/components/Modal/Modal.essential.css
badd +3 src/components/Accordion/Accordion.css
badd +21 src/components/Modal/Modal.js
badd +34 src/components/DiceLauncher/DiceLauncher.essential.css
badd +1 src/utils.js
badd +13 src/components/Accordion/Accordion.js
argglobal
%argdel
$argadd src/App.js
edit src/App.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
21
normal! zo
25
normal! zo
26
normal! zo
28
normal! zo
29
normal! zo
30
normal! zo
53
normal! zo
53
normal! zc
144
normal! zo
144
normal! zc
196
normal! zo
200
normal! zo
201
normal! zo
202
normal! zo
203
normal! zo
204
normal! zo
211
normal! zo
218
normal! zo
225
normal! zo
232
normal! zo
239
normal! zo
246
normal! zo
196
normal! zc
314
normal! zo
316
normal! zo
317
normal! zo
321
normal! zo
322
normal! zo
335
normal! zo
335
normal! zo
336
normal! zo
337
normal! zo
338
normal! zo
341
normal! zo
342
normal! zo
356
normal! zo
357
normal! zo
358
normal! zo
361
normal! zo
362
normal! zo
365
normal! zo
370
normal! zo
380
normal! zo
381
normal! zo
382
normal! zo
382
normal! zo
384
normal! zo
385
normal! zo
let s:l = 320 - ((297 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
320
normal! 08|
tabedit src/components/DiceLauncher/DiceLauncher.js
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=9
setlocal fml=1
setlocal fdn=20
setlocal fen
13
normal! zo
14
normal! zo
30
normal! zo
36
normal! zo
38
normal! zo
54
normal! zo
55
normal! zo
56
normal! zo
57
normal! zo
67
normal! zo
77
normal! zo
78
normal! zo
91
normal! zo
92
normal! zo
92
normal! zo
98
normal! zo
let s:l = 70 - ((7 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
70
normal! 017|
tabedit src/components/DiceLauncher/DiceLauncher.essential.css
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 67 - ((39 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
67
normal! 016|
tabnext 3
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
