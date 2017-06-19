let tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set shellslash
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_dvi='platex --interaction=nonstopmode $*'
let g:Tex_FormatDependency_pdf='dvi,pdf'

set number
set ruler
syntax on
set laststatus=2

set expandtab 
set tabstop=2 
set shiftwidth=2
set softtabstop=2
set autoindent 
set smartindent 

