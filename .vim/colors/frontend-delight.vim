
" VIM color file
"
" Note: Based on the Bernat's FrontEnd Deligh theme for Sublime Text
" by Bernat Fortet

hi clear

set background=dark
if version > 580
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=16
let g:colors_name="Bernat's FrontEnd Deligh"

hi Comment         guifg=#3393ca 
hi Constant        guifg=#5fd7ff 
hi Cursor          guifg=None guibg=#adadad 
hi CursorLine      guifg=None guibg=#565747 
hi Function        guifg=#3393ca 
hi NonText         guifg=#3393ca 
hi Identifier      guifg=#adadad 
hi Keyword         guifg=#f7c325 
hi LineNr          guifg=#f7c325 
hi Normal          guifg=#adadad guibg=#1b1c1d 
hi Number          guifg=#e75e4f 
hi Operator        guifg=#f7c325
hi StorageClass    guifg=#adadad 
hi String          guifg=#e75e4f 
hi Type            guifg=#5fd7ff 
hi Visual          guifg=#1b1c1d guibg=#adadad 
hi Special		   guifg=#5fd7ff 
hi Todo		   	   guifg=#5fd7ff 
hi Exception   	   guifg=#5fd7ff 
hi Statement   	   guifg=#f7c325 

hi TabLineFill	   guibg=#1b1c1d 
hi TabLineFill	   guibg=#1b1c1d 

hi link Conditional Keyword
hi link Repeat Keyword

hi link cType Keyword

