" Name: tundra.vim

let s:rosewater = "#fecdd3"
let s:flamingo = "#EEBEBE"
let s:pink = "#a5b4fc"
let s:mauve = "#b3a6da"
let s:red = "#ff8e8e"
let s:maroon = "#fca5a5"
let s:peach = "#fbc19d"
let s:yellow = "#e8d4b0"
let s:green = "#b5e8b0"
let s:teal = "#719bd3"
let s:sky = "#bae6fd"
let s:sapphire = "#9baaf2"
let s:blue = "#bae6fd"
let s:lavender = "#babbf1"

let s:text = "#f3f4f6"
let s:subtext1 = "#e5e7eb"
let s:subtext0 = "#d1d5db"
let s:overlay2 = "#949CBB"
let s:overlay1 = "#838BA7"
let s:overlay0 = "#737994"
let s:surface2 = "#626880"
let s:surface1 = "#51576D"
let s:surface0 = "#414559"

let s:base = "#111827"
let s:mantle = "#1e2534"
let s:crust = "#282f3e"

" Normal mode
" (Dark)
let s:N1 = [ s:mantle , s:blue , 59  , 149 ] " guifg guibg ctermfg ctermbg
let s:N2 = [ s:blue , s:surface1 , 149 , 59  ] " guifg guibg ctermfg ctermbg
let s:N3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Insert mode
let s:I1 = [ s:mantle , s:teal , 59  , 74  ] " guifg guibg ctermfg ctermbg
let s:I2 = [ s:teal , s:mantle , 74  , 59  ] " guifg guibg ctermfg ctermbg
let s:I3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Visual mode
let s:V1 = [ s:mantle , s:mauve , 59  , 209 ] " guifg guibg ctermfg ctermbg
let s:V2 = [ s:mauve , s:mantle , 209 , 59  ] " guifg guibg ctermfg ctermbg
let s:V3 = [ s:text , s:base , 145 , 16  ] " guifg guibg ctermfg ctermbg

" Replace mode
let s:RE = [ s:mantle , s:red , 59  , 203 ] " guifg guibg ctermfg ctermbg

" Warning section
let s:WR = [s:mantle ,s:peach , 232, 166 ]


let g:airline#themes#catppuccin_mocha#palette = {}

let g:airline#themes#catppuccin_mocha#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let g:airline#themes#catppuccin_mocha#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#catppuccin_mocha#palette.insert_replace = {
	\ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#catppuccin_mocha#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#catppuccin_mocha#palette.replace = copy(g:airline#themes#catppuccin_mocha#palette.normal)
let g:airline#themes#catppuccin_mocha#palette.replace.airline_a = [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ]

let s:IA = [ s:N1[1] , s:N3[1] , s:N1[3] , s:N3[3] , '' ]
let g:airline#themes#catppuccin_mocha#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

let g:airline#themes#catppuccin_mocha#palette.normal.airline_warning = s:WR
let g:airline#themes#catppuccin_mocha#palette.insert.airline_warning = s:WR
let g:airline#themes#catppuccin_mocha#palette.visual.airline_warning = s:WR
