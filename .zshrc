#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Start xserver
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    startx
fi

export EDITOR='nvim'
export SUDO_EDITOR='nvim'
export VISUAL='nvim'
export PAGER='less'
export READER='zathura'

alias cd..='cd ..'
alias vim='nvim'

alias cp='cp --interactive'
alias mv='mv --interactive'

alias o='xdg-open'
alias q='exit'

alias c='clear'
