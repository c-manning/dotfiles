"PLUGIN CONFIGURATION:

" NERDTREE
map <C-n> :NERDTreeToggle %<CR>


" FZF
" Allow fzf to work in interactive move with ctrl+z ctrl+x
imap <c-t> <plug>(fzf-complete-line)
map <c-p> :Files<cr>
" Configuration for Fuzzy File Finder to use RipGrep
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)


" GUNDO
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
nnoremap <leader>g :GundoToggle<CR>

" SYNTASTIC
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_open = 0
let g:syntastic_error_symbol = '❌'
let g:syntastic_flake8_max_line_length="120"
let g:flake8_max_line_length=120
let g:syntastic_python_checkers = ["flake8"]
let g:airline#extensions#ale#enabled = 1
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
let g:WebDevIconsConcealNerdTreeBrackets = 1
let g:WebDevIcons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:webdevicons_enable_ctrlp = 1
