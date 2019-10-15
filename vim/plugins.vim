if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/vim-peekaboo'
Plug 'sjl/gundo.vim'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'tpope/vim-repeat' 
Plug 'portante/pycscope'
Plug 'tpope/vim-surround'  
Plug 'tpope/vim-fugitive' "A all in one git plugin :GStatus for git status :GCommit etc
Plug 'koalaman/shellcheck' "Allows bash script syntax checks
Plug 'davidhalter/jedi-vim'
"Plug 'tell-k/vim-autopep8' "usage is :Autopep8
Plug 'tmhedberg/SimpylFold'
Plug 'alok/notational-fzf-vim'
Plug 'vim-syntastic/syntastic' "Performs syntax highlighting in vim -
Plug 'scrooloose/nerdtree' "Gives me a nice file browser :NERDTree to bring up
Plug 'scrooloose/nerdcommenter' "Allows simple commenting with <leader>c<space>
Plug 'brodie/mouseterm' "This allows me to scroll in vim
Plug 'pangloss/vim-javascript'  " add some javascript syntax highlighting
Plug 'mattn/emmet-vim' " add ability to do snippets

" OLD
" Plug 'Shougo/denite.nvim'
" Plug 'vimwiki/vimwiki'
" Plug 'plasticboy/vim-markdown'
" Plug 'wellle/targets.vim'
" Plug 'mattn/emmet-vim'
" Plug 'Xuyuanp/nerdtree-git-plugin' "Allows icons in filetree to represent state of git repo for each file
" Plug 'dbsr/vimpy'
" Plug 'junegunn/fzf.vim' "A fuzzy file finder that allows file name and content searches :Files :Search
" Plug 'craigemery/vim-autotag'
" Plug 'ryanoasis/vim-devicons'
" Plug 'powerline/powerline'
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'w0rp/ale'
" Plug 'Valloric/YouCompleteMe' "another autocomplete tool
" Plug 'sjbach/lusty' "use leader key then lb to fuzzy search current buffers for opening
" Plug 'tpope/vim-commentary'
" Plug 'ervandew/supertab' "autocomplete tool
" Plug 'kien/ctrlp.vim' 
call plug#end()

