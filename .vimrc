" Vim Config
syntax enable       " enable syntax processing

" Spacing
set tabstop=4       " number of visual spaces per tab
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces 
set tw=85           " text wrap at 85 words
set wrap            " wordwrapping
set linebreak       " break lines at explicit enters

" UI Config
" colorscheme srcery  " Srcery color scheme
set number          " show line numbers
set relativenumber  " show numbers relative to current line
set cursorline      " highlight current line

" Search
set incsearch       " search as characters are entered
set hlsearch        " highlight match

" Misc
set showcmd         " Show (partial) command in status line.

" Plugins
execute pathogen#infect()


" Custom Functions
function! ToggleNumber() " toggle between number and relativenumber
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfun

