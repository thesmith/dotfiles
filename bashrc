# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH

umask 022
export HISTSIZE=5000
export EDITOR=vim
alias ll='ls -lG'
alias la='ls -alG'
alias screen='TERM=screen screen'

export GOPATH=$HOME/go
export PATH=$PATH:.:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:/usr/local/opt/go/libexec/bin:$GOPATH/bin:/sbin

export NODE_PATH=
export MAVEN_OPTS=-Xmx4096m
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.bash-prompt.sh

complete -C aws_completer aws

function lag() {
  ag --color "$@" | less -r
}
