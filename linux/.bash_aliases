
# MACOS
#alias lt='du -sh * | sort -h'
#alias mnt='mount | grep -E ^/dev | column -t'
# https://opensource.com/article/19/7/bash-aliases
alias lt="ls --human-readable --size -1 -S --classify"
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

alias untar='tar -zxvf '

alias ping='ping -c 5'
alias myip='curl ipinfo.io/ip'
alias mylocalip='ipconfig getifaddr en0'


alias ls='ls --color=auto'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias mkdir='mkdir -pv'

alias h='history'
alias gh="history|grep"

alias c='clear'

alias root='sudo -i'
alias su='sudo -i'

alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

alias wget='wget -c'

alias df='df -H'
alias du='du -ch'

# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
# https://github.com/vikaskyadav/awesome-bash-alias

# TODO
## SUPPORT ALIAS FOR DIFFERENT OS

# ### Get os name via uname ###
# _myos="$(uname)"
# ### add alias as per os using $_myos ###
# case $_myos in
#    Linux) alias foo='/path/to/linux/bin/foo';;
#    FreeBSD|OpenBSD) alias foo='/path/to/bsd/bin/foo' ;;
#    SunOS) alias foo='/path/to/sunos/bin/foo' ;;
#    *) ;;
# esac



# GIT commands
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gch="git checkout"
alias gl="git log"
alias gp="git push"
alias gr1="git reset HEAD~1"