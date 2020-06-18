let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/projects/rdf-web-editor-for-humanities---web-app/client/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +97 App.js
badd +5 components/newEditor/NewEditor.js
badd +11 components/Nav.js
badd +73 translations.js
badd +158 components/editor/Editor.js
badd +344 style.css
badd +0 components/editor/AddTriple.js
argglobal
%argdel
$argadd App.js
set stal=2
edit translations.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
2
normal! zo
70
normal! zo
let s:l = 47 - ((2 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 025|
wincmd w
argglobal
if bufexists("components/editor/AddTriple.js") | buffer components/editor/AddTriple.js | else | edit components/editor/AddTriple.js | endif
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=13
setlocal fml=1
setlocal fdn=20
setlocal fen
15
normal! zo
337
normal! zo
338
normal! zo
339
normal! zo
344
normal! zo
346
normal! zo
347
normal! zo
348
normal! zo
let s:l = 343 - ((11 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
343
normal! 016|
wincmd w
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
tabedit components/newEditor/NewEditor.js
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
setlocal fdl=6
setlocal fml=1
setlocal fdn=20
setlocal fen
4
normal! zo
9
normal! zo
14
normal! zo
18
normal! zo
18
normal! zo
26
normal! zo
27
normal! zo
28
normal! zo
29
normal! zo
30
normal! zo
32
normal! zo
38
normal! zo
38
normal! zo
39
normal! zo
45
normal! zo
45
normal! zo
46
normal! zo
51
normal! zo
52
normal! zo
52
normal! zo
53
normal! zo
54
normal! zo
59
normal! zo
59
normal! zo
61
normal! zo
72
normal! zo
73
normal! zo
74
normal! zo
74
normal! zo
17
normal! zo
21
normal! zo
21
normal! zo
29
normal! zo
30
normal! zo
31
normal! zo
32
normal! zo
33
normal! zo
35
normal! zo
41
normal! zo
41
normal! zo
42
normal! zo
48
normal! zo
48
normal! zo
49
normal! zo
54
normal! zo
55
normal! zo
55
normal! zo
56
normal! zo
57
normal! zo
62
normal! zo
62
normal! zo
64
normal! zo
75
normal! zo
76
normal! zo
77
normal! zo
77
normal! zo
21
normal! zo
21
normal! zo
29
normal! zo
30
normal! zo
31
normal! zo
32
normal! zo
33
normal! zo
35
normal! zo
41
normal! zo
41
normal! zo
42
normal! zo
48
normal! zo
48
normal! zo
49
normal! zo
54
normal! zo
55
normal! zo
55
normal! zo
56
normal! zo
57
normal! zo
61
normal! zo
64
normal! zo
64
normal! zo
66
normal! zo
77
normal! zo
78
normal! zo
80
normal! zo
82
normal! zo
82
normal! zo
95
normal! zo
97
normal! zo
99
normal! zo
99
normal! zo
96
normal! zo
97
normal! zo
99
normal! zo
99
normal! zo
97
normal! zo
96
normal! zo
98
normal! zo
100
normal! zo
100
normal! zo
let s:l = 56 - ((36 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 077|
tabnext 2
set stal=1
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
