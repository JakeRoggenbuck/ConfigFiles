#
# ~/.bashrc
#

HISTSIZE=100000
HISTFILESIZE=200000

HISTFILE='/home/jake/.hist/bash_history'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [[ ${EUID} == 0 ]] ; then
        PS1='\[\e[01;34m\]\W\[\e[m\]$(__git_ps1) \[\e[01;32m\]▲\[\e[m\] '
else
        PS1='\[\e[00;00m\]\W\[\e[01;34m\]$(__git_ps1) \[\e[01;32m\]▲\[\e[m\] '
fi

# Alias file
if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

# Git auto complete
source ~/.scripts/git-completion

# Git promt config
source ~/.scripts/git-prompt
