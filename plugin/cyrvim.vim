if exists("loaded_cyrvim")
    finish
endif
let loaded_cyrvim = 1

" Line continuation used here
let s:cpo_save = &cpo
set cpo&vim

function! KBmap(a,b)
	exe "map " . a:a . " " . a:b

	if exists("g:cyrvim_map_esc") && g:cyrvim_map_esc
		exe "imap <Esc>" . a:a . " <Esc>" . a:b
	endif

	if exists("g:cyrvim_map_cmd") && g:cyrvim_map_cmd
		exe "cmap " . a:a . " " . a:b
	endif

	if exists("g:cyrvim_map_cmd_esc") && g:cyrvim_map_cmd_esc
		exe "cmap <Esc>" . a:a . " <Esc>" . a:b
	endif
endfunction
command! -nargs=+ KBmap :call KBmap(<f-args>)

KBmap ё `
KBmap й q
KBmap ц w
KBmap у e
KBmap к r
KBmap е t
KBmap н y
map нн yy
KBmap г u
KBmap ш i
KBmap щ o
KBmap з p
KBmap х [
KBmap ъ ]
KBmap ф a
KBmap ы s
KBmap в d
map вв dd
KBmap а f
KBmap п g
KBmap пп gg
map пй gq
map пйй gqq
KBmap р h
KBmap о j
KBmap л k
KBmap д l
KBmap ж ;
KBmap э '
KBmap я z
map ящ zo
map яс zc
KBmap ч x
KBmap с c
KBmap м v
KBmap и b
KBmap т n
KBmap ь m
KBmap б ,
KBmap ю .
KBmap Ё ~
KBmap Й Q
KBmap Ц W
KBmap У E
KBmap К R
KBmap Е T
KBmap Н Y
KBmap Г U
KBmap Ш I
KBmap Щ O
KBmap З P
KBmap Х {
KBmap Ъ }
KBmap Ф A
KBmap Ы S
KBmap В D
KBmap А F
KBmap П G
KBmap Р H
KBmap О J
KBmap Л K
KBmap Д L
KBmap Ж :
KBmap Э "
KBmap Я Z
KBmap Ч X
KBmap С C
KBmap М V
KBmap И B
KBmap Т N
KBmap Ь M
KBmap Б <
KBmap Ю >

" restore 'cpo'
let &cpo = s:cpo_save
unlet s:cpo_save

