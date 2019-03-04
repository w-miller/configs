alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export PS1="[\e[0;34m\]\u\[\e[m\]@\e[0;90m\]\h\[\e[m\] \w\[$(tput sgr0)\] \[\e[0;31m\]\t\[\e[m\]]\n$ "

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Clipboard aliases
alias c='pbcopy'
alias v='pbpaste'
export PATH="/usr/local/opt/llvm/bin:$PATH"

# grep colours
GREP_OPTIONS='--color=auto'
alias grep="grep $GREP_OPTIONS"
export GREP_COLOR='1;35;40'

# Repeatedly retries the command passed as arguments, until it returns 0.
function retry() {
  while : ; do
    $@ && break
  done
}

alias here='open -a Finder .'

alias vim='nvim'
