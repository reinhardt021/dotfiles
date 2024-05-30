let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +6 LIBRARIES/google-maps.md
badd +1 TOOLS/laravel-vapor.md
badd +1 FRAMEWORKS/next-react.md
badd +1 LIBRARIES/stripe.md
badd +1 LANGUAGES/javascript.md
badd +1 MAC/config-sh.sh
badd +229 MAC/apps-01-install.sh
badd +18 MAC/.zshrc
badd +171 .tmux.conf
badd +1 init.vim
badd +1 ANDROID/.bash_profile
badd +10 ANDROID/apps-01-install.sh
badd +1 config-tmux.sh
badd +1 config-vim.sh
badd +98 tmux-new-session.sh
badd +1 REMOTE-LINUX/apps-01-install.sh
badd +15 .sync.sh
badd +2 .gitcommit.sh
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit TOOLS/laravel-vapor.md
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 40 + 93) / 187)
exe '2resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 40 + 93) / 187)
exe '3resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 64 + 93) / 187)
exe '4resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 40 + 93) / 187)
argglobal
balt FRAMEWORKS/next-react.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 2 - ((1 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("FRAMEWORKS/next-react.md", ":p")) | buffer FRAMEWORKS/next-react.md | else | edit FRAMEWORKS/next-react.md | endif
if &buftype ==# 'terminal'
  silent file FRAMEWORKS/next-react.md
endif
balt TOOLS/laravel-vapor.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 7 - ((5 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 7
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("LIBRARIES/stripe.md", ":p")) | buffer LIBRARIES/stripe.md | else | edit LIBRARIES/stripe.md | endif
if &buftype ==# 'terminal'
  silent file LIBRARIES/stripe.md
endif
balt TOOLS/laravel-vapor.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("LANGUAGES/javascript.md", ":p")) | buffer LANGUAGES/javascript.md | else | edit LANGUAGES/javascript.md | endif
if &buftype ==# 'terminal'
  silent file LANGUAGES/javascript.md
endif
balt LIBRARIES/stripe.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 10 - ((8 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 012|
wincmd w
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 40 + 93) / 187)
exe '2resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 40 + 93) / 187)
exe '3resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 64 + 93) / 187)
exe '4resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 4resize ' . ((&columns * 40 + 93) / 187)
tabnext
edit REMOTE-LINUX/apps-01-install.sh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 105 + 93) / 187)
exe '2resize ' . ((&lines * 19 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 81 + 93) / 187)
exe '3resize ' . ((&lines * 20 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 81 + 93) / 187)
argglobal
balt MAC/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 10 - ((8 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("MAC/apps-01-install.sh", ":p")) | buffer MAC/apps-01-install.sh | else | edit MAC/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file MAC/apps-01-install.sh
endif
balt MAC/config-sh.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 113 - ((0 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 113
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("MAC/apps-01-install.sh", ":p")) | buffer MAC/apps-01-install.sh | else | edit MAC/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file MAC/apps-01-install.sh
endif
balt MAC/config-sh.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 230 - ((0 * winheight(0) + 10) / 20)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 230
normal! 024|
wincmd w
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 105 + 93) / 187)
exe '2resize ' . ((&lines * 19 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 81 + 93) / 187)
exe '3resize ' . ((&lines * 20 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 81 + 93) / 187)
tabnext
edit ANDROID/.bash_profile
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 62 + 93) / 187)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 62 + 93) / 187)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 62 + 93) / 187)
exe 'vert 4resize ' . ((&columns * 61 + 93) / 187)
argglobal
balt ANDROID/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 72 - ((26 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 72
normal! 031|
wincmd w
argglobal
if bufexists(fnamemodify("MAC/.zshrc", ":p")) | buffer MAC/.zshrc | else | edit MAC/.zshrc | endif
if &buftype ==# 'terminal'
  silent file MAC/.zshrc
endif
balt MAC/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 159 - ((1 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 159
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("MAC/.zshrc", ":p")) | buffer MAC/.zshrc | else | edit MAC/.zshrc | endif
if &buftype ==# 'terminal'
  silent file MAC/.zshrc
endif
balt MAC/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 17 - ((6 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 17
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify(".gitcommit.sh", ":p")) | buffer .gitcommit.sh | else | edit .gitcommit.sh | endif
if &buftype ==# 'terminal'
  silent file .gitcommit.sh
endif
balt .sync.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 62 + 93) / 187)
exe '2resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 62 + 93) / 187)
exe '3resize ' . ((&lines * 22 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 62 + 93) / 187)
exe 'vert 4resize ' . ((&columns * 61 + 93) / 187)
tabnext
edit init.vim
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 54 + 93) / 187)
exe '2resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 77 + 93) / 187)
exe '3resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 54 + 93) / 187)
argglobal
balt .tmux.conf
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 276 - ((19 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 276
normal! 031|
wincmd w
argglobal
if bufexists(fnamemodify(".tmux.conf", ":p")) | buffer .tmux.conf | else | edit .tmux.conf | endif
if &buftype ==# 'terminal'
  silent file .tmux.conf
endif
balt init.vim
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 171 - ((17 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 171
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("tmux-new-session.sh", ":p")) | buffer tmux-new-session.sh | else | edit tmux-new-session.sh | endif
if &buftype ==# 'terminal'
  silent file tmux-new-session.sh
endif
balt config-vim.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 96 - ((15 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 96
normal! 0
wincmd w
exe '1resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 1resize ' . ((&columns * 54 + 93) / 187)
exe '2resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 2resize ' . ((&columns * 77 + 93) / 187)
exe '3resize ' . ((&lines * 40 + 24) / 48)
exe 'vert 3resize ' . ((&columns * 54 + 93) / 187)
tabnext 3
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
