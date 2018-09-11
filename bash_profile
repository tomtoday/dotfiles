source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export PATH="/usr/local/bin:/usr/local/sbin:$HOME/bin:/Developer/usr/bin:$PATH"
export MANPATH="/usr/local/man:/usr/local/mysql/man:/opt/local/man:$MANPATH"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
