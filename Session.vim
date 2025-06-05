let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 .config/nvim/init.lua
badd +7 ~/.dotfiles/.config/nvim/lua/plugins/init.lua
badd +115 .zshrc
badd +9 .config/hypr/hyprland.conf
badd +1 ~/.dotfiles/.config/hypr/monitors.conf
badd +59 ~/.dotfiles/.config/hypr/enviroment.conf
badd +1 ~/.dotfiles/.config/hypr/autostart.conf
badd +1 ~/.dotfiles/.config/hypr/animations.conf
badd +1 ~/.dotfiles/.config/hypr/input.conf
badd +1 ~/.dotfiles/.config/hypr/modules/animations.conf
badd +1 ~/.dotfiles/.config/hypr/modules/autostart.conf
badd +1 ~/.dotfiles/.config/hypr/modules/environment.conf
badd +3 ~/.dotfiles/.config/hypr/modules/windowrules.conf
badd +1 ~/.dotfiles/.config/hypr/modules/general.conf
badd +1 ~/.dotfiles/.config/hypr/modules/decorations.conf
badd +1 ~/.dotfiles/.config/hypr/modules/dwindle.conf
badd +1 ~/.dotfiles/.config/hypr/modules/master.conf
badd +2 ~/.dotfiles/.config/hypr/modules/misc.conf
argglobal
%argdel
edit ~/.dotfiles/.config/hypr/modules/environment.conf
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt .config/hypr/hyprland.conf
setlocal foldmethod=manual
setlocal foldexpr=0
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 1 - ((0 * winheight(0) + 15) / 31)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext 1
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
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
