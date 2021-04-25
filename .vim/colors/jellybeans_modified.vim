" Vim color file - jellybeans_modified
" Generated by http://bytefluent.com/vivify 2021-04-24
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "jellybeans_modified"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#e8e8bb guibg=#150c15 guisp=#150c15 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi Float -- no settings --
"hi Union -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi ModeMsg -- no settings --
"hi EnumerationName -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Underlined -- no settings --
"hi clear -- no settings --
"hi default -- no settings --
hi SignColumn guifg=#6eb0b0 guibg=#480548 guisp=#480548 gui=NONE ctermfg=73 ctermbg=53 cterm=NONE
hi SpecialComment guifg=#369d36 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi Typedef guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Title guifg=#69b93e guibg=NONE guisp=NONE gui=bold ctermfg=107 ctermbg=NONE cterm=bold
hi Folded guifg=#6eb0b0 guibg=#480548 guisp=#480548 gui=italic ctermfg=73 ctermbg=53 cterm=NONE
hi PreCondit guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Include guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#000000 guibg=#f0d8f0 guisp=#f0d8f0 gui=italic ctermfg=NONE ctermbg=255 cterm=NONE
hi StatusLineNC guifg=#a090a0 guibg=#180618 guisp=#180618 gui=italic ctermfg=247 ctermbg=234 cterm=NONE
hi NonText guifg=#805780 guibg=#150c15 guisp=#150c15 gui=NONE ctermfg=96 ctermbg=233 cterm=NONE
hi DiffText guifg=NONE guibg=#244040 guisp=#244040 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi ErrorMsg guifg=NONE guibg=#902424 guisp=#902424 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi Debug guifg=#369d36 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#668888 guisp=#668888 gui=NONE ctermfg=NONE ctermbg=66 cterm=NONE
hi Identifier guifg=#b29eee guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#369d36 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi Conditional guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#c5c547 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi Todo guifg=#805780 guibg=NONE guisp=NONE gui=bold ctermfg=96 ctermbg=NONE cterm=bold
hi Special guifg=#369d36 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi LineNr guifg=#60554e guibg=#150c15 guisp=#150c15 gui=NONE ctermfg=59 ctermbg=233 cterm=NONE
hi StatusLine guifg=#f0d8f0 guibg=#100610 guisp=#100610 gui=italic ctermfg=255 ctermbg=233 cterm=NONE
hi Label guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#100610 guibg=#eed6ee guisp=#eed6ee gui=NONE ctermfg=233 ctermbg=255 cterm=NONE
hi Search guifg=#f088ac guibg=#302f30 guisp=#302f30 gui=underline ctermfg=211 ctermbg=236 cterm=underline
hi Delimiter guifg=#809999 guibg=NONE guisp=NONE gui=NONE ctermfg=109 ctermbg=NONE cterm=NONE
hi Statement guifg=#bf7cbf guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
hi Comment guifg=#886a88 guibg=NONE guisp=NONE gui=italic ctermfg=96 ctermbg=NONE cterm=NONE
hi Character guifg=#cf2525 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Number guifg=#cf2525 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Boolean guifg=#bf7cbf guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
hi Operator guifg=#e8e8bb guibg=#150c15 guisp=#150c15 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
hi CursorLine guifg=NONE guibg=#1c191c guisp=#1c191c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi TabLineFill guifg=#a080a0 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#221322 guibg=#221322 guisp=#221322 gui=NONE ctermfg=235 ctermbg=235 cterm=NONE
hi CursorColumn guifg=NONE guibg=#1c191c guisp=#1c191c gui=NONE ctermfg=NONE ctermbg=234 cterm=NONE
hi Define guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Function guifg=#faca61 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#6eb0b0 guibg=#480548 guisp=#480548 gui=NONE ctermfg=73 ctermbg=53 cterm=NONE
hi PreProc guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Visual guifg=NONE guibg=#402440 guisp=#402440 gui=NONE ctermfg=NONE ctermbg=238 cterm=NONE
hi VertSplit guifg=#180618 guibg=#180618 guisp=#180618 gui=italic ctermfg=234 ctermbg=234 cterm=NONE
hi Exception guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Type guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi DiffChange guifg=NONE guibg=#200220 guisp=#200220 gui=NONE ctermfg=NONE ctermbg=53 cterm=NONE
hi Cursor guifg=NONE guibg=#98c4f0 guisp=#98c4f0 gui=NONE ctermfg=NONE ctermbg=153 cterm=NONE
hi Error guifg=NONE guibg=#902424 guisp=#902424 gui=NONE ctermfg=NONE ctermbg=88 cterm=NONE
hi PMenu guifg=#ffafff guibg=#000000 guisp=#000000 gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#805780 guibg=#341734 guisp=#341734 gui=NONE ctermfg=96 ctermbg=236 cterm=NONE
hi Constant guifg=#cf2525 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Tag guifg=#369d36 guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi String guifg=#ad74ad guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#7ba8a8 guisp=#7ba8a8 gui=NONE ctermfg=NONE ctermbg=109 cterm=NONE
hi MatchParen guifg=#ffafff guibg=#a070a0 guisp=#a070a0 gui=bold ctermfg=219 ctermbg=139 cterm=bold
hi Repeat guifg=#ffac13 guibg=NONE guisp=NONE gui=NONE ctermfg=214 ctermbg=NONE cterm=NONE
hi Directory guifg=#dacf70 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi Structure guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi Macro guifg=#79b8dc guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=NONE guibg=#221622 guisp=#221622 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi TabLine guifg=#000000 guibg=#9fafc0 guisp=#9fafc0 gui=italic ctermfg=NONE ctermbg=103 cterm=NONE
hi cursorim guifg=#1f0b1f guibg=#ffb217 guisp=#ffb217 gui=NONE ctermfg=234 ctermbg=214 cterm=NONE
hi mbenormal guifg=#cfcf86 guibg=#13133f guisp=#13133f gui=NONE ctermfg=186 ctermbg=17 cterm=NONE
hi perlspecialstring guifg=#b868d0 guibg=#402440 guisp=#402440 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi doxygenspecial guifg=#fddd73 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#eed6ee guibg=#13133f guisp=#13133f gui=NONE ctermfg=255 ctermbg=17 cterm=NONE
hi mbevisiblechanged guifg=#eed6ee guibg=#64648f guisp=#64648f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
hi doxygenparam guifg=#fddd73 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#fddd73 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#fddd73 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#b868d0 guibg=#402440 guisp=#402440 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi cformat guifg=#b868d0 guibg=#402440 guisp=#402440 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi lcursor guifg=#402440 guibg=#3dff3d guisp=#3dff3d gui=NONE ctermfg=238 ctermbg=83 cterm=NONE
hi doxygenspecialmultilinedesc guifg=#ad15ad guibg=NONE guisp=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#6575ed guibg=NONE guisp=NONE gui=NONE ctermfg=62 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#fdd13f guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#cfcfa6 guibg=#64648f guisp=#64648f gui=NONE ctermfg=187 ctermbg=60 cterm=NONE
hi user2 guifg=#a060a0 guibg=#35355e guisp=#35355e gui=NONE ctermfg=133 ctermbg=60 cterm=NONE
hi user1 guifg=#afffe3 guibg=#35355e guisp=#35355e gui=NONE ctermfg=158 ctermbg=60 cterm=NONE
hi doxygenspecialonelinedesc guifg=#ad15ad guibg=NONE guisp=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#ad29ad guibg=NONE guisp=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#b868d0 guibg=#402440 guisp=#402440 gui=NONE ctermfg=134 ctermbg=238 cterm=NONE
hi pythonimport guifg=#039003 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#f0d8f0 guibg=NONE guisp=NONE gui=NONE ctermfg=255 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#039003 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#a283a2 guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#039003 guibg=NONE guisp=NONE gui=NONE ctermfg=28 ctermbg=NONE cterm=NONE
hi pythonbuiltin guifg=#ffddff guibg=NONE guisp=NONE gui=NONE ctermfg=225 ctermbg=NONE cterm=NONE
hi phpstringdouble guifg=#20aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#20aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi javascriptstrings guifg=#20aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi htmlstring guifg=#20aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi phpstringsingle guifg=#20aaff guibg=NONE guisp=NONE gui=NONE ctermfg=39 ctermbg=NONE cterm=NONE
hi stringdelimiter guifg=#666645 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
hi rubyregexp guifg=#ddc6dd guibg=NONE guisp=NONE gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi string guifg=#ad74ad guibg=NONE guisp=NONE gui=NONE ctermfg=139 ctermbg=NONE cterm=NONE
hi constant guifg=#cf2525 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi normal guifg=#e8e8bb guibg=#150c15 guisp=#150c15 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
hi rubyinstancevariable guifg=#b09cfe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi rubyclass guifg=#5f5f99 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi identifier guifg=#b29eee guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi comment guifg=#886a88 guibg=NONE guisp=NONE gui=italic ctermfg=96 ctermbg=NONE cterm=NONE
hi rubyregexpdelimiter guifg=#634b63 guibg=NONE guisp=NONE gui=NONE ctermfg=241 ctermbg=NONE cterm=NONE
hi rubyregexpspecial guifg=#a408a4 guibg=NONE guisp=NONE gui=NONE ctermfg=127 ctermbg=NONE cterm=NONE
hi rubypredefinedidentifier guifg=#de4040 guibg=NONE guisp=NONE gui=NONE ctermfg=167 ctermbg=NONE cterm=NONE
hi function guifg=#faca61 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi directory guifg=#dacf70 guibg=NONE guisp=NONE gui=NONE ctermfg=185 ctermbg=NONE cterm=NONE
hi rubysymbol guifg=#d68fd6 guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
hi rubycontrol guifg=#6077c6 guibg=NONE guisp=NONE gui=NONE ctermfg=68 ctermbg=NONE cterm=NONE
hi rubyidentifier guifg=#b09cfe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=italic ctermfg=252 ctermbg=234 cterm=NONE
hi htmlboldunderlineitalic guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlbolditalic guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
hi htmlunderlineitalic guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
hi htmlbold guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=bold ctermfg=252 ctermbg=234 cterm=bold
hi htmlboldunderline guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
hi htmlunderline guifg=#d0bbd0 guibg=#1f0b1f guisp=#1f0b1f gui=underline ctermfg=252 ctermbg=234 cterm=underline
hi condtional guifg=#41ffff guibg=NONE guisp=NONE gui=NONE ctermfg=87 ctermbg=NONE cterm=NONE
