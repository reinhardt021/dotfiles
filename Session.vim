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
badd +242 MAC/.zshrc
badd +169 .tmux.conf
badd +1 init.vim
badd +99 ANDROID/.bash_profile
badd +98 tmux-new-session.sh
badd +1 REMOTE-LINUX/apps-01-install.sh
badd +22 .gitcommit.sh
badd +1 MAC/config-sh.sh
badd +6 config-vim.sh
badd +0 REMOTE-LINUX/.bash_profile
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
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
exe 'vert 1resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 52 + 107) / 214)
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
let s:l = 2 - ((1 * winheight(0) + 25) / 51)
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
let s:l = 7 - ((1 * winheight(0) + 25) / 51)
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
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
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
let s:l = 10 - ((1 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 52 + 107) / 214)
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
exe '2resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
exe '3resize ' . ((&lines * 40 + 27) / 54)
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
let s:l = 2 - ((1 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
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
let s:l = 111 - ((0 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 111
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
let s:l = 16 - ((15 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 16
normal! 048|
wincmd w
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe '2resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
exe '3resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 106 + 107) / 214)
tabnext
edit REMOTE-LINUX/.bash_profile
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 70 + 107) / 214)
argglobal
balt ANDROID/.bash_profile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 120 - ((32 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 120
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("ANDROID/.bash_profile", ":p")) | buffer ANDROID/.bash_profile | else | edit ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file ANDROID/.bash_profile
endif
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 72 - ((14 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 72
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
let s:l = 241 - ((3 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 241
normal! 04|
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
let s:l = 8 - ((0 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe '3resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
exe '4resize ' . ((&lines * 25 + 27) / 54)
exe 'vert 4resize ' . ((&columns * 70 + 107) / 214)
tabnext
edit config-vim.sh
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
argglobal
balt .gitcommit.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify(".gitcommit.sh", ":p")) | buffer .gitcommit.sh | else | edit .gitcommit.sh | endif
if &buftype ==# 'terminal'
  silent file .gitcommit.sh
endif
balt ANDROID/.bash_profile
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 107 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 106 + 107) / 214)
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
exe '1resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 40 + 27) / 54)
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
let s:l = 263 - ((8 * winheight(0) + 5) / 10)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 263
normal! 017|
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
let s:l = 617 - ((8 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 617
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
let s:l = 167 - ((46 * winheight(0) + 25) / 51)
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
let s:l = 2 - ((1 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
exe '1resize ' . ((&lines * 10 + 27) / 54)
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe '2resize ' . ((&lines * 40 + 27) / 54)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 70 + 107) / 214)
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
