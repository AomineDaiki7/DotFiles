set nocompatible
set hlsearch
set backspace=2
execute pathogen#infect()
" Pathogen load
filetype off
call pathogen#infect()
call pathogen#helptags()
syntax enable
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
"let g:airline_skip_empty_sections = 
"let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#syntastic#enabled = 0
let g:airline_detect_iminsert=1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#wordcount#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tagbar#enabled = 0
let g:solarized_termcolors=256
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'
let g:python_pep8_indent_multiline_string=4
let g:solarized_termcolors=256
let g:go_version_warning = 0
let g:airline_theme = 'solarized'
hi Visual ctermbg=blue ctermfg=white
"colorscheme solarized

set backspace=indent,eol,start

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set showmatch
syntax on

set encoding=utf8
let base16colorspace=256
set background=light

"set autoindent
"set smartindent

"buffer
nnoremap <F2> :bp<CR>
nnoremap <F3> :bn<CR>
nnoremap <F12> :bd<CR>
nnoremap <F4> :set invnumber<CR>
nnoremap <C-right> <C-w><C-w>


if has('gui_running')
    set background=light
else
    set background=dark
endif
filetype plugin indent on
syntax on

