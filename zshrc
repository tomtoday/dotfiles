. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

if [[ -s /Volumes/Eliza/Users/tom/.rvm/scripts/rvm ]] ; then source /Volumes/Eliza/Users/tom/.rvm/scripts/rvm ; fi
