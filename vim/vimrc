"
" ~postlogic's vimrc
"   -- with tons of stuff borrowed from all over.


"Functions 'n stuff

if v:progname =~? "evim"
  finish
endif

if v:version >= 700
  try
    setlocal numberwidth=3
  catch
  endtry
endif

iab teh the

if has('gui_running')
    set columns=90
    set lines=40
    set clipboard+=unnamed
    set guioptions+=a
    set guioptions+=c
    set guioptions-=T
    set guioptions-=m
    set guioptions-=l
    set guioptions-=r
    set guioptions-=b
    set guioptions-=R
    set guioptions-=L
    colorscheme darkspectrum
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 9
    "set guifont=Monospace
elseif (&term == 'screen.linux') || (&term =~ '^linux')
    set t_Co=8
    colorscheme darkspectrum
elseif (&term == 'rxvt-unicode') || (&term =~ '^xterm') || (&term =~ '^screen')
    set mouse=a
    set ttymouse=xterm
    colorscheme darkspectrum
else
    colorscheme darkspectrum
endif

" Options

set nocompatible
set backspace=indent,eol,start
set nobackup
set history=50
set ruler
set showcmd
set incsearch
set nowrap
set cmdheight=1
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set number
set laststatus=2
let html_use_css=1
map Q gq


" Folding
if has("folding")
"    set foldenable
    set nofoldenable
    set foldmethod=indent
    set foldlevel=1
    set foldminlines=5
endif

set wildchar=<tab>
set wildmenu
set wildmode=longest:full,full

if v:version >= 700
    set cursorline
    set completeopt=menu,menuone,longest,preview
    set numberwidth=1
    
    "popup coloring - use mine, not yours
    hi Pmenu ctermbg=2 guibg=darkolivegreen
    hi PmenuSel ctermbg=0 guibg=black
endif

" Plugins

if &t_Co > 2 || has("gui_running")
  syntax on
  "set hlsearch
endif

if has("autocmd")
  filetype plugin indent on
  
  augroup vimrcEx
  au!

  autocmd FileType text setlocal textwidth=78

  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END
else
  set smartindent
endif

filetype plugin on
set ofu=syntaxcomplete#Complete

if hlexists("ExtraWhitespace")
    match ExtraWhitespace /\s\+$/
endif

set enc=utf-8

map <F2> :sh<Return>
map <F3> :Tlist<Return>
map <F9> :!./%<Return>

