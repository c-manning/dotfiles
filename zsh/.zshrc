
stty -ixon # Disable ctrl-s and ctrl-q.

HISTFILE=~/.histfile
HISTSIZE=99999999999999999
SAVEHIST=99999999999999999

export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/share/python:$PATH
export EDITOR='vim'

setopt appendhistory autocd
# use emacs terminal shortcuts
bindkey -e

# Path to your oh-my-zsh installation.
export ZSH=~/dotfiles/zsh/ohmyzsh/
ZSH_THEME="cypher"
plugins=(zsh-autosuggestions tmux tmuxinator dirhistory python vi git)
source $ZSH/oh-my-zsh.sh

# zsh tmux settings, make tmux autostart on load of iterm
#ZSH_TMUX_AUTOSTART='true'

# Adding color
alias ls='gls -hA --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
LS_COLORS=$LS_COLORS:'di=0;33:' ; export LS_COLORS

# set aliases
alias diff="diff-so-fancy"
alias gits="git status"
alias man="tldr"
alias mux="tmuxinator"
alias top='htop'
alias ping='prettyping --nolegend'
alias ll='ls -ltarh'
#alias ls='ls -ah'
alias vim='mvim -v' 

eval $(thefuck --alias)
source ~/dotfiles/zsh/prompt.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
