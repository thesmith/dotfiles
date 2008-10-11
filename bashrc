# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "`id -u`" -eq 0 ]; then
  PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
else
  PATH="/usr/local/bin:/usr/bin:/bin:/usr/games"
fi

if [ "$PS1" ]; then
  if [ "$BASH" ]; then
    PS1='\u@\h:\w\$ '
  else
    if [ "`id -u`" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

export PATH

umask 022
export HISTSIZE=5000
export PS1="\[\e]2;\u@\H \w\a\e[0m\][\w] $\[\e[0m\] "
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH
export EDITOR=vim
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -al'
alias vi='vim'
alias screen='TERM=screen screen'

export TERM=xterm-color
export PATH=$PATH:/var/lib/gems/1.8/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin
export JAVA_HOME=/usr/lib/jvm/java-1.5.0-sun
#export GEM_HOME=/usr/lib/ruby/gems/1.8
#export RUBYLIB=/usr/lib/ruby/1.8:/usr/local/lib/site_ruby/1.8
