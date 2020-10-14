. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/completion

# use .localrc for settings specific to one system
[[ -f ~/.localrc ]] && .  ~/.localrc

unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

# for autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# export HOMEBREW_GITHUB_API_TOKEN="nnn"

source <(kubectl completion zsh)
## see https://github.com/lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true
source ~/.zsh-nvm/zsh-nvm.plugin.zsh
source ~/.dotfiles/scripts/api-services.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tbrice/src/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tbrice/src/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tbrice/src/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tbrice/src/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(rbenv init -)"
