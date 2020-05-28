let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/work/projects/blog/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 components/Header/Header.js
badd +11 pages/index.js
badd +79 components/seo.js
badd +5 pages/404.js
badd +23 ~/work/projects/blog/static/admin/config.yml
badd +192 styles/style.scss
badd +10 components/Hamburger/Hamburger.js
badd +11 components/Hamburger/Hamburger.scss
badd +1 styles/_colors.scss
badd +30 components/Header/Header.scss
badd +82 pages/search.js
badd +20 ~/work/projects/blog/gatsby-config.js
badd +24 templates/blog-post.js
badd +2 styles/blog-post.scss
badd +19 components/PostList.js
argglobal
%argdel
$argadd components/Header/Header.js
edit components/PostList.js
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
setlocal fdl=12
setlocal fml=1
setlocal fdn=20
setlocal fen
5
normal! zo
7
normal! zo
8
normal! zo
9
normal! zo
9
normal! zo
let s:l = 47 - ((21 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 038|
tabedit styles/style.scss
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
setlocal fdl=5
setlocal fml=1
setlocal fdn=20
setlocal fen
66
normal! zo
106
normal! zo
118
normal! zo
122
normal! zo
137
normal! zo
138
normal! zo
141
normal! zo
144
normal! zo
148
normal! zo
154
normal! zo
165
normal! zo
171
normal! zo
179
normal! zo
183
normal! zo
198
normal! zo
209
normal! zo
210
normal! zo
211
normal! zo
214
normal! zo
225
normal! zo
230
normal! zo
let s:l = 151 - ((21 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
151
normal! 011|
tabedit pages/search.js
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
setlocal fdl=10
setlocal fml=1
setlocal fdn=20
setlocal fen
11
normal! zo
43
normal! zo
44
normal! zo
47
normal! zo
49
normal! zo
50
normal! zo
51
normal! zo
61
normal! zo
76
normal! zo
78
normal! zo
87
normal! zo
96
normal! zo
97
normal! zo
97
normal! zo
98
normal! zo
105
normal! zo
106
normal! zo
106
normal! zo
107
normal! zo
109
normal! zo
133
normal! zo
133
normal! zo
126
normal! zo
127
normal! zo
128
normal! zo
133
normal! zo
136
normal! zo
137
normal! zo
133
normal! zo
133
normal! zo
132
normal! zo
132
normal! zo
125
normal! zo
126
normal! zo
127
normal! zo
132
normal! zo
135
normal! zo
136
normal! zo
125
normal! zo
126
normal! zo
127
normal! zo
132
normal! zo
135
normal! zo
136
normal! zo
125
normal! zo
132
normal! zo
132
normal! zo
132
normal! zo
137
normal! zo
131
normal! zo
132
normal! zo
133
normal! zo
135
normal! zo
138
normal! zo
141
normal! zo
142
normal! zo
158
normal! zo
158
normal! zo
158
normal! zo
158
normal! zo
158
normal! zo
158
normal! zo
let s:l = 119 - ((22 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
119
normal! 09|
tabnext 2
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
