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

#export GEM_HOME=/usr/lib/ruby/gems/1.8
#export RUBYLIB=/usr/lib/ruby/1.8:/usr/local/lib/site_ruby/1.8
export ECHO_NEST_API_KEY=AFB4HZSDSRBTJGC5Q
export NODE_PATH=/usr/local/lib/node
export MAVEN_OPTS=-Xmx4096m
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export WORKFEED_JS_COVERAGE_HOME=/Users/besmith/projects/workfeed_js_coverage
export YAMJS_COVERAGE_HOME=/Users/besmith/projects/yamjs_coverage
export YAMJS_HOME=/Users/besmith/projects/yamjs
export DISABLE_COVERAGE=true
export RBENV_ROOT=/usr/local/var/rbenv
export DEVENV_MEMORY=4096
export DEVENV_CPUS=1

source ~/.git-prompt.sh
source ~/.git-completion.bash
source ~/.bash-prompt.sh

alias jssh='ssh -A -t jumphost.dm2.yammer.com ssh $@' 
alias cssh='csshX --ssh_args "-A -t jumphost-001.bn1.yammer.com  ssh" $@'

eval "$(rbenv init - --no-rehash)"

complete -C aws_completer aws

function lag() {
  ag --color "$@" | less -r
}
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
