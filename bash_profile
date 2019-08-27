[[ -s ~/.bashrc ]] && source ~/.bashrc

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export SPARK_HOME=/opt/spark
#export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3
export OPENBLAS_NUM_THREADS=1

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export JRE_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre

export PATH=$SPARK_HOME/bin:$PATH:$JAVA_HOME/bin:$JAVA_HOME/jre/bin

alias ls='ls -GFh'
alias ll='ls -l'
alias la='ls -a'
alias lr='find . -maxdepth 1 -mmin' # list recent file lr -5 # files modified in last 5min
alias c='cd /mnt/c'
alias d='cd /mnt/d'
alias e='cd /mnt/e'
alias desk='cd /mnt/c/Users/mingqwu/Desktop/'
alias dl='cd /mnt/c/Users/mingqwu/Downloads/'
alias sup='superset runserver -d'
alias rec='cd /mnt/e/rec'


# tmux related
# Attaches tmux to the last session; creates a new session if none exists.
alias t='tmux attach || tmux new-session'
# Attaches tmux to a session (example: ta portal)
alias ta='tmux attach -t'
# Creates a new session
alias tn='tmux new-session'
# Lists all ongoing sessions
alias tl='tmux list-sessions'
alias mqsql='mysql -u root -p'
alias spark='/opt/spark/bin/pyspark'


function prompt {
	local BLACK="\[\033[0;30m\]"
	local BLACKBOLD="\[\033[1;30m\]"
	local RED="\[\033[0;31m\]"
	local REDBOLD="\[\033[1;31m\]"
	local GREEN="\[\033[0;32m\]"
	local GREENBOLD="\[\033[1;32m\]"
	local YELLOW="\[\033[0;33m\]"
	local YELLOWBOLD="\[\033[1;33m\]"
	local BLUE="\[\033[0;34m\]"
	local BLUEBOLD="\[\033[1;34m\]"
	local PURPLE="\[\033[0;35m\]"
	local PURPLEBOLD="\[\033[1;35m\]"
	local CYAN="\[\033[0;36m\]"
	local CYANBOLD="\[\033[1;36m\]"
	local WHITE="\[\033[0;37m\]"
	local WHITEBOLD="\[\033[1;37m\]"
	local RESETCOLOR="\[\e[00m\]"

	export PS1="\n$RED\u $PURPLE@ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null | grep '^*')\n $BLUE[\#] → $RESETCOLOR"
		export PS2=" | → $RESETCOLOR"
}

prompt

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH


# added by Anaconda3 5.2.0 installer
export PATH="/Users/mqwu/Applications/anaconda3/bin:/Applications/CMake.app/Contents/bin:$PATH"


# pretty json format tools
alias pjson='python -m json.tool'

prettyjson_s() {
    echo "$1" | python -m json.tool
}

prettyjson_f() {
    python -m json.tool "$1"
}

prettyjson_w() {
    curl "$1" | python -m json.tool
}



