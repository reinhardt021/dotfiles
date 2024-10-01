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
badd +5 FRAMEWORKS/next-react.md
badd +2 LIBRARIES/stripe.md
badd +11 LANGUAGES/javascript.md
badd +223 MAC/apps-01-install.sh
badd +282 MAC/.zshrc
badd +167 .tmux.conf
badd +449 init.vim
badd +107 ANDROID/.bash_profile
badd +1 tmux-new-session.sh
badd +38 REMOTE-LINUX/apps-01-install.sh
badd +1 .gitcommit.sh
badd +1 MAC/config-sh.sh
badd +10 config-vim.sh
badd +161 REMOTE-LINUX/.bash_profile
badd +1 ANDROID/apps-01-install.sh
badd +5 OS/config-vim.sh
badd +2 config-tmux.sh
badd +1 OS/config-tmux.sh
badd +1 test.sh
badd +1 thelp
badd +2 SCRIPTS/test.sh
badd +2 SCRIPTS/.gitcommit.sh
badd +1 config-hooks.sh
badd +1 git-hooks/pre-commit
badd +6 MAC/apps-02-config.sh
badd +5 ANDROID/apps-02-config.sh
badd +0 SCRIPTS/tmux-new-session.sh
badd +1 SCRIPTS/config-hooks.sh
badd +5 REMOTE-LINUX/apps-02-config.sh
badd +2 ANDROID/config-bash.sh
badd +2 REMOTE-LINUX/config-bash.sh
badd +10 os-MAC/config-sh.sh
badd +5 os-MAC/apps-02-config.sh
badd +8 os-ANDROID/config-bash.sh
badd +3 os-ANDROID/apps-02-config.sh
badd +5 os-LINUX-remote/apps-02-config.sh
badd +5 os-LINUX-remote/config-bash.sh
badd +1 README.md
badd +0 os-MAC/.zshrc
badd +0 os-ANDROID/.bash_profile
badd +0 os-LINUX-remote/.bash_profile
argglobal
%argdel
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit LANGUAGES/javascript.md
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
exe 'vert 2resize ' . ((&columns * 52 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 53 + 107) / 214)
argglobal
balt LIBRARIES/stripe.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 11 - ((10 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 012|
wincmd w
argglobal
if bufexists(fnamemodify("LIBRARIES/stripe.md", ":p")) | buffer LIBRARIES/stripe.md | else | edit LIBRARIES/stripe.md | endif
if &buftype ==# 'terminal'
  silent file LIBRARIES/stripe.md
endif
balt LANGUAGES/javascript.md
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
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("TOOLS/laravel-vapor.md", ":p")) | buffer TOOLS/laravel-vapor.md | else | edit TOOLS/laravel-vapor.md | endif
if &buftype ==# 'terminal'
  silent file TOOLS/laravel-vapor.md
endif
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
exe 'vert 1resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 52 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 53 + 107) / 214)
exe 'vert 4resize ' . ((&columns * 53 + 107) / 214)
tabnext
edit os-MAC/config-sh.sh
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
argglobal
balt os-MAC/apps-02-config.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 10 - ((9 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 10
normal! 020|
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/config-bash.sh", ":p")) | buffer os-ANDROID/config-bash.sh | else | edit os-ANDROID/config-bash.sh | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/config-bash.sh
endif
balt os-ANDROID/apps-02-config.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 8 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 8
normal! 020|
wincmd w
argglobal
if bufexists(fnamemodify("os-LINUX-remote/config-bash.sh", ":p")) | buffer os-LINUX-remote/config-bash.sh | else | edit os-LINUX-remote/config-bash.sh | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-remote/config-bash.sh
endif
balt os-LINUX-remote/apps-02-config.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 5 - ((4 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 019|
wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
tabnext
edit os-MAC/.zshrc
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
argglobal
balt README.md
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 160 - ((22 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 160
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("os-ANDROID/.bash_profile", ":p")) | buffer os-ANDROID/.bash_profile | else | edit os-ANDROID/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-ANDROID/.bash_profile
endif
balt README.md
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
if bufexists(fnamemodify("os-LINUX-remote/.bash_profile", ":p")) | buffer os-LINUX-remote/.bash_profile | else | edit os-LINUX-remote/.bash_profile | endif
if &buftype ==# 'terminal'
  silent file os-LINUX-remote/.bash_profile
endif
balt README.md
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
3wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
tabnext
edit OS/config-vim.sh
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
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
if bufexists(fnamemodify("OS/config-tmux.sh", ":p")) | buffer OS/config-tmux.sh | else | edit OS/config-tmux.sh | endif
if &buftype ==# 'terminal'
  silent file OS/config-tmux.sh
endif
balt git-hooks/pre-commit
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
if bufexists(fnamemodify("SCRIPTS/.gitcommit.sh", ":p")) | buffer SCRIPTS/.gitcommit.sh | else | edit SCRIPTS/.gitcommit.sh | endif
if &buftype ==# 'terminal'
  silent file SCRIPTS/.gitcommit.sh
endif
balt SCRIPTS/config-hooks.sh
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
tabnext
edit SCRIPTS/tmux-new-session.sh
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
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
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
let s:l = 2 - ((1 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 2
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify(".tmux.conf", ":p")) | buffer .tmux.conf | else | edit .tmux.conf | endif
if &buftype ==# 'terminal'
  silent file .tmux.conf
endif
balt tmux-new-session.sh
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 168 - ((23 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 168
normal! 0
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
let s:l = 180 - ((7 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 180
normal! 03|
wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 2resize ' . ((&columns * 71 + 107) / 214)
exe 'vert 3resize ' . ((&columns * 70 + 107) / 214)
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
