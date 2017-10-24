bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias vim='mvim -v'
alias clatex='latexmk -pvc'

alias ls='ls -GF'

alias cd..='cd ..'
alias ..='cd ..'
alias cd-='cd -'
alias 1cd='cd ..'
alias 2cd='cd ../..'
alias 3cd='cd ../../..'
alias 4cd='cd ../../../..'
alias 5cd='cd ../../../../..'


export HISTCONTROL=ignoreboth:erasedups

export EDITOR=/usr/bin/mvim

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
