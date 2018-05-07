syntax enable
set tw=79
set number
set autoindent
" python
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set visualbell

filetype indent on
" set iskeyword+=\",\\
let g:tex_isk = '48-57,a-z,A-Z,192-255,\",\\'
let namepdf =  '%:r'.'.pdf'

map <F2> :let myfile=expand("<cfile>")<cr>:execute("tabnew ".myfile)<cr>
command Umlaut %s/ö/\\"o/e | %s/ü/\\"u/e | %s/ä/\\"a/e | %s/ß/\\ss/e
let mapleader=","

:command! Pdf exe '!sumatrapdf' namepdf 


" Latex latexmk macro
nnoremap <leader>c 1gt :wa<CR>:!latexmk -pdf %<CR><C-l>
nnoremap <leader>v 1gt :Pdf <CR><C-l>
                                                                                         
set background=dark
colorscheme delek 
