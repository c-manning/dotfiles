
stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.
LS_COLORS=$LS_COLORS:'di=0;36:' ; export LS_COLORS

# set aliases
alias diff="diff-so-fancy"
alias man="tldr"
alias top='htop'
alias ping='prettyping --nolegend'
alias ll='ls -ltarh'
alias ls='ls -ah'
alias vim='mvim -v' 

source "$(navi widget zsh)"
source "$(navi widget bash)"
#bind -x '"\C-p": vim $(fzf);'


#alias cht=/usr/local/bin/cht.sh
# source the fzf.bash file

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

