" Don't try to be vi compatible
set nocompatible

" Run Time Path
"let $VIM="/d1/support/vim/vim63"
"let $VIMRUNTIME="/d1/support/vim/vim63"
"set rtp+=/d1/support/vim/vim63

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
" set wrap
set wrap
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Textmate holdouts

" Normal mode mapping
inoremap jk <Esc>

" Formatting
map <leader>q gqip

" Visualize tabs and newlines
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
"set term=xterm
if &term =~ "xterm"
    if has("terminfo")
        let &t_Co=8
        let &t_Sf="\e[3%p1%dm"
        let &t_Sb="\e[4%p1%dm"
    else
        let &t_Co=8
        let &t_Sf="\e[3%dm"
        let &t_Sb="\e[4%dm"
    endif
endif
syntax on
colorscheme koehler

" Force detect openroad filetype
au BufNewFile,BufRead *.exp set filetype=openroad

" Force detect openroad filetype
au BufNewFile,BufRead *.vb set filetype=vb

" Set folding method
set fdm=indent

" Split navigations mapping
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

" rainbow 
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
