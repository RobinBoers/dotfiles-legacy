" =============================================================================
" Filename: autoload/lightline/colorscheme/frontenddelight.vim
" Author: RobinBoers
" License: MIT License
" Last Change: 2021/04/25 11:35:24.

" Based on simple black
" Author: lucasprag
" License: MIT License
" Last Change: 2019/10/28 22:54:01.
" =============================================================================
let s:black = [ '#1b1c1d', '0' ]
let s:black2 = [ '#1b1c1d', '233' ]

let s:gray = [ '#242526', '235' ]
let s:gray2 = [ '#565747', '237' ]
let s:gray3 = [ '#adadad', '239' ]
let s:gray4 = [ '#adadad', '241' ]

let s:violet = [ '#f02e4f', '170' ]

let s:blue = [ '#2c70b7', '67' ]
let s:blue2 = [ '#4fbce6', '110' ]

let s:green = [ '#5fac6d', '71' ]
let s:gold = [ '#fa771d', '220' ]
let s:red = [ '#f8511b', '160' ]
let s:none = [ 'NONE', 'NONE' ]


let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:black, s:blue ], [ s:gray4, s:black2 ] ]
let s:p.normal.right = [ [ s:gray, s:gray4 ], [ s:gray3, s:gray ], [ s:gray2, s:black2 ] ]
let s:p.inactive.right = [ [ s:black, s:black2 ], [ s:gray, s:black ] ]
let s:p.inactive.left =  [ [ s:gray, s:black ], [ s:black2, s:black ] ]
let s:p.insert.left = [ [ s:black, s:green ], [ s:gray4, s:black2 ] ]
let s:p.replace.left = [ [ s:black, s:red ], [ s:gray4, s:black2 ] ]
let s:p.visual.left = [ [ s:black, s:violet ], [ s:gray4, s:black2 ] ]
let s:p.normal.middle = [ [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:black2, s:black ] ]
let s:p.tabline.left = [ [ s:gray4, s:black ] ]
let s:p.tabline.tabsel = [ [ s:blue, s:black ] ]
let s:p.tabline.middle = [ [ s:black2, s:black ] ]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:red, s:black ] ]
let s:p.normal.warning = [ [ s:gold, s:black2 ] ]

let g:lightline#colorscheme#frontenddelight#palette = lightline#colorscheme#flatten(s:p)
