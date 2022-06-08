alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [[ $(uname -s) == Linux ]]
then
	export QHOME='/home/conner/q'
	alias q='rlwrap -r $QHOME/l64/q'
	alias k9='rlwrap -r ~/k/li2.0'
	alias duhome="du -ahd 1 ~ | sort -h | sed s/'\/home\/conner'/'~'/g"
	alias duroot="sudo du -ahd 0 /bin /boot /cdrom /dev /etc /lib /lib32 /libx32 /lib64 /lost+found /mnt /opt /root /sbin /snap /srv /swapfile /sys /usr /tmp /var | sort -h"
	alias dftot="df -h  | grep -v tmpfs | grep -v 100% | grep -v ' 0%' | grep -v p1"
	alias memstats="free | grep Mem | awk '{print \"Memory Utilization: \n-------------------\nUsed:       \"int(100*\$3/\$2)\"%\nFree:       \"int(100*\$4/\$2)\"%\nShared:      \"int(100*\$5/\$2)\"%\nBuff/Cache: \"int(100*\$6/\$2)\"%\nAvailable:  \"int(100*\$7/\$2)\"%\"}'"
	alias storstats="df | grep \" /$\" | awk '{print \"Storage Utilization: \n--------------------\nUsed:      \"int(100*\$3/\$2)\"%\nReserved:   \"100-int(100*(\$4+\$3)/\$2)\"%\nAvailable: \"int(100*\$4/\$2)\"%\"}'"
	alias membyproc="sudo ps_mem -p $(pgrep -d, -u $USER)"
else
	export QHOME='/Users/conner/q'
	alias q='rlwrap -r $QHOME/m64/q'
	alias k9='rlwrap -r ~/k/mi2.0'
	alias duhome="du -hd 1 ~ | sort -h | sed s/'\/Users\/conner'/'~'/g"
	alias duroot="sudo du -hd 1 / 2>/dev/null | sort -h"
	alias dftot="df -hln"
	alias membyproc="sudo ps_mem -p $(pgrep -d, -u $USER)"
fi

alias searchrt="sudo find / -name"

alias searchm="sudo find ~ -name"

alias simps="echo '    PID    PPID USER         ELAPSED COMMAND';ps -eo pid,ppid,user,etime,comm | grep"

source .gitAccessToken

alias gitpush='CWD=${PWD##*/};git push https://${GIT_TOKEN}@github.com/conner-mcnicholas/${CWD}.git'

gclone() { git clone https://github.com/conner-mcnicholas/$@.git; }

alias map="telnet mapscii.me"
