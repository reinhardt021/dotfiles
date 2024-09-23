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
badd +1 TOOLS/laravel-vapor.md
badd +1 FRAMEWORKS/next-react.md
badd +1 LIBRARIES/stripe.md
badd +1 LANGUAGES/javascript.md
badd +229 MAC/apps-01-install.sh
badd +201 MAC/.zshrc
badd +169 .tmux.conf
badd +103 init.vim
badd +1 ANDROID/.bash_profile
badd +98 tmux-new-session.sh
badd +1 REMOTE-LINUX/apps-01-install.sh
badd +25 .gitcommit.sh
badd +1 MAC/config-sh.sh
badd +0 config-vim.sh
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
exe '1resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 40 + 107) / 214)
exe '2resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 40 + 107) / 214)
exe '3resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 91 + 107) / 214)
exe '4resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 40 + 107) / 214)
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
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
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
let s:l = 7 - ((0 * winheight(0) + 11) / 23)
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
let s:l = 1 - ((0 * winheight(0) + 11) / 23)
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
let s:l = 10 - ((0 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 012|
wincmd w
exe '1resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 40 + 107) / 214)
exe '2resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 40 + 107) / 214)
exe '3resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 91 + 107) / 214)
exe '4resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 40 + 107) / 214)
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
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 106 + 107) / 214)
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
let s:l = 6 - ((5 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("MAC/apps-01-install.sh", ":p")) | buffer MAC/apps-01-install.sh | else | edit MAC/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file MAC/apps-01-install.sh
endif
balt REMOTE-LINUX/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 112 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 112
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("MAC/apps-01-install.sh", ":p")) | buffer MAC/apps-01-install.sh | else | edit MAC/apps-01-install.sh | endif
if &buftype ==# 'terminal'
  silent file MAC/apps-01-install.sh
endif
balt REMOTE-LINUX/apps-01-install.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 56 - ((11 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 56
normal! 017|
wincmd w
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe '2resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 106 + 107) / 214)
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
exe '1resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 22 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 70 + 107) / 214)
exe '3resize ' . ((&lines * 0 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
exe '4resize ' . ((&lines * 21 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 71 + 107) / 214)
exe '5resize ' . ((&lines * 1 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 71 + 107) / 214)
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 50 - ((1 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 50
normal! 07|
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
let s:l = 160 - ((7 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 160
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
let s:l = 15
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify(".gitcommit.sh", ":p")) | buffer .gitcommit.sh | else | edit .gitcommit.sh | endif
if &buftype ==# 'terminal'
  silent file .gitcommit.sh
endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 27 - ((12 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 27
normal! 02|
wincmd w
argglobal
if bufexists(fnamemodify("config-vim.sh", ":p")) | buffer config-vim.sh | else | edit config-vim.sh | endif
if &buftype ==# 'terminal'
  silent file config-vim.sh
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
let s:l = 10 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 0
wincmd w
exe '1resize ' . ((&lines * 23 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 22 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 70 + 107) / 214)
exe '3resize ' . ((&lines * 0 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
exe '4resize ' . ((&lines * 21 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 71 + 107) / 214)
exe '5resize ' . ((&lines * 1 + 27) / 54)
exe 'vert 5resize ' . ((&columns * 71 + 107) / 214)
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
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 39 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 70 + 107) / 214)
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
let s:l = 604 - ((5 * winheight(0) + 5) / 11)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 604
normal! 018|
wincmd w
argglobal
if bufexists(fnamemodify("init.vim", ":p")) | buffer init.vim | else | edit init.vim | endif
if &buftype ==# 'terminal'
  silent file init.vim
endif
balt .tmux.conf
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 690 - ((27 * winheight(0) + 19) / 39)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 690
normal! 0
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
let s:l = 167 - ((23 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 167
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("tmux-new-session.sh", ":p")) | buffer tmux-new-session.sh | else | edit tmux-new-session.sh | endif
if &buftype ==# 'terminal'
  silent file tmux-new-session.sh
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
let s:l = 2 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 11 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 39 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 70 + 107) / 214)
tabnext 4
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
