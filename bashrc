# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "`id -u`" -eq 0 ]; then
  PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
else
  PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

export PATH

umask 022
export HISTSIZE=5000
#export PS1="\[\e]2;\u@\H \w\a\e[0m\][\w] $\[\e[0m\] "
#export PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
#alias ls='ls --color=auto'
alias ll='ls -lG'
alias la='ls -alG'
alias screen='TERM=screen screen'
alias pgrep='ps aux | grep -v grep | grep '

export TERM=xterm-color
export SCALA_HOME=/Users/bens/bin/scala
export PATH=$PATH:/var/lib/gems/1.8/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/share/ant/bin:$SCALA_HOME/bin:/Library/appengine-java-sdk-1.2.6/bin:./bin:.:~/bin:~/pear/bin

#export GEM_HOME=/usr/lib/ruby/gems/1.8
#export RUBYLIB=/usr/lib/ruby/1.8:/usr/local/lib/site_ruby/1.8
export ECHO_NEST_API_KEY=AFB4HZSDSRBTJGC5Q
export NODE_PATH=/usr/local/lib/node
export MAVEN_OPTS=-Xmx1024m

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
. ~/.bashrc_top10

source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.bash-prompt.sh