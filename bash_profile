source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

PATH=$PATH:$HOME/.manymo/bin # Add manymo to PATH for scripting
export PATH=/Users/tom/.rvm/gems/ruby-2.0.0-p247/bin:/Users/tom/.rvm/gems/ruby-2.0.0-p247@global/bin:/Users/tom/.rvm/rubies/ruby-2.0.0-p247/bin:/Users/tom/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/Users/tom/bin:/Developer/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/Users/tom/src/android-sdk/tools:/Users/tom/src/android-sdk/platform-tools:/Users/tom/.manymo/bin:/Users/tom/.manymo/bin:$PATH

# go
export GOROOT=`go env GOROOT`
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
