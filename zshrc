. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi
# if [[ -s /usr/local/bin/virtualenvwrapper.sh ]] ; then source /usr/local/bin/virtualenvwrapper.sh ; fi

export PYTHONSTARTUP=~/.pystartup
# source `jump-bin --zsh-integration`

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:$HOME/.manymo/bin # Add manymo to PATH for scripting

export PGHOST=localhost
export PGDATA=/usr/local/var/postgres
