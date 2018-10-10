if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
call plug#begin('~/.vim/plugged')
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/vim-peekaboo'
Plug 'plasticboy/vim-markdown'
"Plug 'powerline/powerline'
Plug 'wellle/targets.vim'
Plug 'Shougo/denite.nvim'
Plug 'mattn/emmet-vim'
Plug 'sjl/gundo.vim'
"Plug 'nathanaelkane/vim-indent-guides'
"Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'vim-scripts/indentpython.vim'
"Plug 'dbsr/vimpy'
"Plug 'junegunn/fzf.vim' "A fuzzy file finder that allows file name and content searches :Files :Search
Plug 'craigemery/vim-autotag'
Plug 'tpope/vim-repeat' 
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-fugitive' "A all in one git plugin :GStatus for git status :GCommit etc
Plug 'koalaman/shellcheck' "Allows bash script syntax checks
"Plug 'Xuyuanp/nerdtree-git-plugin' "Allows icons in filetree to represent state of git repo for each file
Plug 'tmhedberg/SimpylFold'
Plug 'vim-syntastic/syntastic' "Performs syntax highlighting in vim -
Plug 'scrooloose/nerdtree' "Gives me a nice file browser :NERDTree to bring up
Plug 'scrooloose/nerdcommenter' "Allows simple commenting with <leader>c<space>
Plug 'brodie/mouseterm' "This allows me to scroll in vim
Plug 'kien/ctrlp.vim' 
"Plug 'sjbach/lusty' "use leader key then lb to fuzzy search current buffers for opening
"Plug 'tpope/vim-commentary'
"Plug 'ervandew/supertab' "autocomplete tool
Plug 'Valloric/YouCompleteMe' "another autocomplete tool
Plug 'ryanoasis/vim-devicons'
call plug#end()

