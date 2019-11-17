HISTSIZE=5000
HISTFILE=~/.hist/zsh_history
SAVEHIST=5000

PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b %# '

alias cp="cp -i" 
alias df='df -h'
alias free='free -m'
alias np='nano -w PKGBUILD'
alias more=less

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'

alias v='vim'
alias sv='sudo vim'

alias nv='nvim'

alias snv='sudo nvim'

alias ra='ranger'
alias sr='sudo ranger'

alias c='clear'
alias cls='clear && ls'

alias em='emacs'
alias sem='sudo emacs'

alias g='git'
alias stats='git status'
alias br='git branch'
alias check='git checkout'
alias com='git commit'

alias logg='git log --graph --decorate --all'

alias bgd='feh --bg-fill'

alias groffme='groff -Tps -me'
