alias bstr='WM=bspwm startx && source /home/jake/.profile'

alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'

alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias fil='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias p='fzf --reverse'
alias pe='fzf --exact --reverse'

alias j='nvim $(pe)'

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
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

alias ra='ranger'
alias sr='sudo ranger'

alias cl='clear'
alias cls='clear && ls'

alias em='emacs'
alias sem='sudo emacs'

alias g='git'
alias ga='git add'
alias gb='git branch'
alias gsw='git switch'
alias gc='git commit'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias gp='git push'
alias gra='git remote add'
alias gst='git status'
alias gswc='git switch -c'

alias logg='git log --graph --decorate --all'
alias bgd='feh --bg-fill'
alias groffme='groff -Tps -me'
alias count="find . -type f | wc -l"
alias gp="bgd ~/.gp"
alias ytau="youtube-dl -x --audio-format mp3"
alias lintit='git ls-files *.py | xargs pylint'
alias pusho='git push origin $(git symbolic-ref --short HEAD)'
