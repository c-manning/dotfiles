call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/vim-peekaboo'
Plug 'Shougo/denite.nvim'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'w0rp/ale'
Plug 'vimwiki/vimwiki'
Plug 'vim-scripts/indentpython.vim'
"Plug 'dbsr/vimpy'
"Plug 'junegunn/fzf.vim' "A fuzzy file finder that allows file name and content searches :Files :Search
Plug 'tpope/vim-repeat' 
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-fugitive' "A all in one git plugin :GStatus for git status :GCommit etc
Plug 'koalaman/shellcheck' "Allows bash script syntax checks
"Plug 'Xuyuanp/nerdtree-git-plugin' "Allows icons in filetree to represent state of git repo for each file
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic' "Performs syntax highlighting in vim -
"Plug 'scrooloose/nerdtree' "Gives me a nice file browser :NERDTree to bring up
"Plug 'tomtom/tcomment_vim' "better than below?
Plug 'scrooloose/nerdcommenter' "Allows simple commenting with <leader>c<space>
Plug 'brodie/mouseterm' "This allows me to scroll in vim
Plug 'kien/ctrlp.vim' 
"Plug 'sjbach/lusty' "use leader key then lb to fuzzy search current buffers for opening
"Plug 'tpope/vim-commentary'
"Plug 'ervandew/supertab' "autocomplete tool
Plug 'Valloric/YouCompleteMe' "another autocomplete tool
call plug#end()

