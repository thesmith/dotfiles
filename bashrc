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
#alias ls='ls --color=auto'
alias ll='ls -lG'
alias la='ls -alG'
alias vi='vim'
alias screen='TERM=screen screen'

# nginx
alias nginx_start='launchctl load /usr/local/Cellar/nginx/1.0.4/org.nginx.nginx.plist'
alias nginx_stop='launchctl unload /usr/local/Cellar/nginx/1.0.4/org.nginx.nginx.plist'
alias nginx_restart='nginx_stop; nginx_start;' 

# php-fpm
alias fpm_start='launchctl load /usr/local/Cellar/php/5.3.6/org.php.php-fpm.plist'
alias fpm_stop='launchctl unload /usr/local/Cellar/php/5.3.6/org.php.php-fpm.plist'
alias fpm_restart='fpm_stop; fpm_start'

alias masteruk='ssh master.uk.top10.com'
alias masterus='ssh master.top10.com'

export TERM=xterm-color
export SCALA_HOME=/Users/bens/bin/scala
export PATH=$PATH:/var/lib/gems/1.8/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/share/ant/bin:$SCALA_HOME/bin:/Library/appengine-java-sdk-1.2.6/bin:./bin:.:~/bin
#export GEM_HOME=/usr/lib/ruby/gems/1.8
#export RUBYLIB=/usr/lib/ruby/1.8:/usr/local/lib/site_ruby/1.8
export ECHO_NEST_API_KEY=AFB4HZSDSRBTJGC5Q
export export AKKA_HOME=/Users/bens/projects/akka-actors-1.1.3

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
