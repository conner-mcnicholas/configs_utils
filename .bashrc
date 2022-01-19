alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export QHOME='/home/conner/q'
alias q='rlwrap -r $QHOME/l64/q'
alias k9='rlwrap -r ~/k/li2.0'

eval "$(thefuck --alias)"

export GIT_TOKEN='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'
alias gitpush='CWD=${PWD##*/};git push https://${GIT_TOKEN}@github.com/conner-mcnicholas/${CWD}.git'
