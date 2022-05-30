set number
set relativenumber
set ignorecase
set smartcase

function! Cond(cond, ...) 
	let opts = get(a:000, 0, {})
	return a:cond ? opts : extend(opts, { 'on': [], 'for': []})
endfunction

call plug#begin() 
	Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
	Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), {'as': 'vsc-easymotion'})
	Plug 'tpope/vim-surround'
	Plug 'justinmk/vim-sneak'
call plug#end()

" nmap oo o<Esc>k
"// nmap OO O<Esc>j

map f <Plug>Sneak_s
map F <Plug>Sneak_S

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
let g:EasyMotion_smartcase = 1

vmap <C-c> "+y

