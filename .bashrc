
# Some utility functions

function l() {
    ls -lahG $*;
}

function clr() {
        clear
        clear
}

function serve() {
    python -m SimpleHTTPServer $1
}


# virtualenv helper
# if the cwd has a directory that contains the substring "env"
# assume it is an virtualenv and source the activate script there

function activate {
    source ${1-$(ls | grep "env$" | head -n 1)}/bin/activate
}
alias a='activate'
alias d='deactivate'


# Git Radar - https://github.com/michaeldfallen/git-radar

BLACK=$(tput setaf 0)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
LIME_YELLOW=$(tput setaf 190)
POWDER_BLUE=$(tput setaf 153)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
BRIGHT=$(tput bold)
NORMAL=$(tput sgr0)
BLINK=$(tput blink)
REVERSE=$(tput smso)
UNDERLINE=$(tput smul)

export GIT_RADAR_COLOR_BRANCH=$MAGENTA
PS1="\[${GREEN}\]\w\[${RED}\]\[${WHITE}\]\$(git-radar --bash --fetch) \$ \[${NORMAL}\]"


# Hadoop aliases
alias hfs='hadoop fs'
alias hls='hadoop fs -ls'
alias hrm='hadoop fs -rm'
alias hrmr='hadoop fs -rmr'
alias hput='hadoop fs -put'
alias hget='hadoop fs -get'
alias hpush='hadoop fs -copyFromLocal'
alias hpull='hadoop fs -copyToLocal'
alias hcat='hadoop fs -cat'
alias hmkdir='hadoop fs -mkdir'
alias hcp='hadoop fs -cp'
alias hchmod='hadoop fs -chmod'
alias hmv='hadoop fs -mv'
alias hgetmerge='hadoop fs -getmerge'
alias hkill='hadoop job -kill'
alias hdu='hadoop fs -du -s -h' 
alias hstream='hadoop jar $HADOOP_HOME/hadoop-streaming.jar -Dmapred.job.queue.name='$QUEUE
alias hcount='hadoop dfs -count'
