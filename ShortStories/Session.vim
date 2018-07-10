let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +230 GitBook/Library/duendeinexistente/cirque/ShortStories/TwilightInThePast.md
badd +0 GitBook/Library/duendeinexistente/cirque/ShortStories/TwilightInThePastNotes.md
argglobal
silent! argdel *
edit GitBook/Library/duendeinexistente/cirque/ShortStories/TwilightInThePast.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 58 + 48) / 96)
exe 'vert 2resize ' . ((&columns * 37 + 48) / 96)
argglobal
let s:l = 230 - ((4 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
230
normal! 0202|
lcd ~/GitBook/Library/duendeinexistente/cirque/ShortStories
wincmd w
argglobal
edit ~/GitBook/Library/duendeinexistente/cirque/ShortStories/TwilightInThePastNotes.md
let s:l = 1 - ((0 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/GitBook/Library/duendeinexistente/cirque/ShortStories
wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 48) / 96)
exe 'vert 2resize ' . ((&columns * 37 + 48) / 96)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
