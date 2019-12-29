alias bstr='startx && source /home/jake/.profile'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less
alias tree="tree -C"

alias ll='ls -lh'
alias la='ls -a'
alias lla='ls -lah'
alias lt='ls --human-readable --size -1 -S --classify'
alias last='ls -t1l'
alias lview='ls -lhFA > /tmp/list && nvim /tmp/list'

alias v='nvim'
alias nv='nvim'
alias snv='sudo nvim'

alias j='nvim $(pwd)'

alias ra='ranger'
alias sr='sudo ranger'

alias c='clear'
alias cls='clear && ls'

alias em='emacs'
alias sem='sudo emacs'

alias g='git'
alias stat='git status'
alias br='git branch'
alias check='git checkout'
alias com='git commit'

alias logg='git log --graph --decorate --all'

alias bgd='feh --bg-fill'

alias groffme='groff -Tps -me'

alias count="find . -type f | wc -l"
