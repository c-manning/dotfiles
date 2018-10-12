"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" IMPORTS
let mapleader = ","
source ~/dotfiles/vim/plugins.vim
source ~/dotfiles/vim/plugin-config.vim
source ~/dotfiles/vim/keymap.vim

" let vim know where my config files are
set runtimepath+=~/dotfiles/vim/


" SYSTEM SETTINGS
set foldmethod=indent
set foldlevel=10
" Turn off all shit vim does to work like vi
set nocompatible
" Allows scrolling with trackpad in vim using mouseterm
set mouse=a
" Display the cursor position on the last line of the screen or in the status line of a window
set ruler
set showcmd
set ignorecase
set wildignore=*.pyc
set textwidth=0 
set wrapmargin=0
set smartcase
set cursorline
set hlsearch
set incsearch
set showmatch           " highlight matching [{()}]
set scrolloff=3
set showmode
set hidden
set lazyredraw          " redraw only when we need to.
set encoding=UTF-8
set wildmenu
set wildmode=list:longest
set ttyfast
set undofile
set history=10000
set undolevels=10000
set undodir=~/.undofiles


" VISUALS
colorscheme badwolf 
syntax on
hi Normal ctermbg=black
set colorcolumn=120
set visualbell
" Turn on my numbers and relative numbers
set number
set relativenumber

