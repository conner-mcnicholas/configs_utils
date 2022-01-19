alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export QHOME='/home/conner/q'
alias q='rlwrap -r $QHOME/l64/q'
alias k9='rlwrap -r ~/k/li2.0'

eval "$(thefuck --alias)"

alias gitpush='CWD=${PWD##*/};git push https://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@github.com/conner-mcnicholas/${CWD}.git'
