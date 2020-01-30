" Plugin for inserting common style guide block comments
" Last Change: Januarty 29th, 2020
" Maintainer: Milan Donhowe <milanaugust+GIT@gmail.com>
" License: Public Domain--go wild!


" Generic Boiler Plate to ensure compatibility: "
let s:save_cpo = &cpo
set cpo&vim

" Boiler Plate to prevent the script from being loaded twice"
if exists("g:loaded_cs16x")
	finish
endif
let g:loaded_cs16x = 1


function! s:FileHeader()
	r~/.vim/plugin/textblocks/headerText.txt
endfunction

function! s:FunctionHeader()
	r~/.vim/plugin/textblocks/functionText.txt
endfunction

"Command Bindings"
command CS161HEAD call s:FileHeader()
command CS161FUNC call s:FunctionHeader()



let &cpo = s:save_cpo
