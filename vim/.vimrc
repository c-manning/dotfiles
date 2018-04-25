
source ~/dotfiles/vim/plugins.vim

set wildignore=*.pyc
set textwidth=0 
set wrapmargin=0
"split navigations
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap j gj
nnoremap k gk
"navigate by display lines not physical lines using hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set colorcolumn=120

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

"map ctrl+l to clear the search highlighting
nnoremap <C-L> :nohlsearch<CR><C-L>

" Turn off all shit vim does to work like vi
set nocompatible
set number
set relativenumber
" Allows scrolling with trackpad in vim using mouseterm
set mouse=a
" Display the cursor position on the last line of the screen or in the status line of a window
set ruler
"Gets rid of annoying noise, makes curser flash instead
set visualbell
set showcmd
set ignorecase
set smartcase
set cursorline
syntax on
set hlsearch
set incsearch
set showmatch
set encoding=utf-8
set scrolloff=3
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set ttyfast
"set backspace=indent,eol,start
set undofile
"set clipboard=unnamed

" LEADER LINES
let mapleader = ","
"nnoremap <leader>w <C-w>v<C-w>l
"leader and lb does fuzzy search of buffers, ctrl+t then opens in new tab
"map <leader>f :Files<cr>
"map <C-p> :Files<cr>
"map <leader>h :Find<cr>


"Plugin configurations:
	" Set NERDTree to open with Ctrl + n
	map <C-n> :NERDTreeToggle %<CR>
	"YouCompleteMe
	map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
	let g:ycm_autoclose_preview_window_after_completion=1
	" Configuration for Fuzzy File Finder to use RipGrep
	command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
	" Allow fzf to work in interactive move with ctrl+z ctrl+x
	imap <c-z><c-x> <plug>(fzf-complete-line)


"VISUALS
colorscheme molokai 
hi Normal ctermbg=black
"set t_Co=256
"set background=black


let g:solarized_termcolors=256
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_open = 0
let g:solarized_termtrans=1
let g:syntastic_error_symbol = '❌'
let g:syntastic_flake8_max_line_length="120"
let g:flake8_max_line_length=120
let g:syntastic_python_checkers = ["flake8"]
let g:airline#extensions#ale#enabled = 1
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
"set listchars=eol:¬,tab:▷\ ,
