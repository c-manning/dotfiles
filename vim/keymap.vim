"
" NAVIGATION
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

" Enable folding with the spacebar
nnoremap <space> za

"map ctrl+l to clear the search highlighting
nnoremap <C-L> :nohlsearch<CR><C-L>

"get rid of bloody Ex mode
nnoremap Q <nop>
nnoremap ;q <nop>
