#export MONGO_PATH=/usr/local/mongodb
#export PATH=$PATH:$MONGO_PATH/bin

[ -f ~/.bashrc ] && source ~/.bashrc

export CLICOLOR=1
export EDITOR='vim'

eval $(thefuck --alias)
# added by Anaconda3 4.4.0 installer
export PATH="/Users/ccmanni/anaconda3/bin:$PATH"


# Switch escape and caps and use wal colors if tty:
#sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null
#wal -Rn
