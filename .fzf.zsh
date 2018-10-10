# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/ccmanni/.fzf/bin* ]]; then
  export PATH="$PATH:/Users/ccmanni/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/ccmanni/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/ccmanni/.fzf/shell/key-bindings.zsh"

