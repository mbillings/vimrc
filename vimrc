set nocompatible               " prefer vim features over vi
set hidden                     " hide buffers rather than closing them
set wrap		               " wrap lines by default, toggle with F7
set tabstop=4                  " a tab is four spaces
set backspace=indent,eol,start " set backspace behavior
set autoindent                 " always set autoindenting on
set copyindent                 " copy the previous indentation on
set shiftwidth=4               " number of spaces to use for
set shiftround                 " use multiple of shiftwidth when
set showmatch                  " set show matching parenthesis
set ignorecase                 " ignore case when searching
set smartcase                  " ignore case if search pattern is all
set smartindent                " handy sometimes, but not when pasting blocks with comments. Toggle with F8
set smarttab                   " insert tabs according to shiftwidth
set hlsearch                   " highlight search matches
set incsearch                  " match as you type
set history=1000               " remember up to 1000 previous commands 
set undolevels=1000            " undo up to 1000 times
set noerrorbells               " honestly, are these ever useful?
set pastetoggle=<F2>           "useful when pasting large blocks with comments, overrides smartindent
" move down and up one screen line, handy when dealing with large wrapped lines
noremap <C-J> gj  
noremap <C-K> gk
syntax on                      " highlight recognized language commands
set wildmode=list:longest      " when there's more than one match, list all until logest common string 
filetype on                    " recognize what kind of file is being made, goes with the 'syntax' parameter
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" don't let the F keys feel left out
:nmap <F5> :set number!<CR>
map <F6> :echo 'Current time: ' . strftime( '%c' )<CR>
:nmap <F7> :set wrap!<CR>
:nmap <F8> :set autoindent! smartindent!<CR>
"maps '>>' to '=>' when in insert mode. Only works in .pp (puppet) files
au BufNewFile,BufRead *.pp imap >> =>

" see flag explanation with :help <flag>
