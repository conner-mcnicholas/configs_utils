alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export QHOME='/home/conner/q'
alias q='rlwrap -r $QHOME/l64/q'
alias k9='rlwrap -r ~/k/li2.0'

alias duroot="cd /;sudo du -sh bin boot cdrom dev etc home lib lib32 libx32 lib64 lost+found mnt opt root sbin snap srv swapfile sys usr tmp var | sort -rh | head -10"
alias duhome="cd;sudo du -sh * | sort -rh | head -10"

alias searchrt="sudo find / -name"
alias searchm="sudo find ~ -name"

alias simps="echo '    PID    PPID USER         ELAPSED COMMAND';ps -eo pid,ppid,user,etime,comm | grep"

alias dftot="df -h | grep -v tmpfs | grep -v 100% | grep -v 0% | grep -v p1"

source ~/.gitAccessToken
alias gitpush='CWD=${PWD##*/};git push https://${GIT_TOKEN}@github.com/conner-mcnicholas/${CWD}.git'
