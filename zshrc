. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc


export PYTHONSTARTUP=~/.pystartup

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# for autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.manymo/bin # Add manymo to PATH for scripting

PATH=$PATH:$GRADLE_HOME/bin # Add gradle to PATH


export PGHOST=localhost
export PGDATA=/usr/local/var/postgres

# if [[ -s /usr/local/bin/virtualenvwrapper.sh ]] ; then source /usr/local/bin/virtualenvwrapper.sh ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export HOMEBREW_GITHUB_API_TOKEN="4aed371edb3eb273a8b7bb00591569c32e680fff"
