#!/bin/zsh

# ZSH configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda-gitster"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=203'

# Plugins
plugins=(
  git
  osx
  brew
  docker
  jira
  web-search
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $HOME/.functions
source $HOME/.alias

# $PATH (user installed binaries have precedence)
export PATH=/bin:/usr/local/bin:/usr/bin:${PATH}

# Language environments
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='code'
else
    export EDITOR='vim'
fi

# Google Cloud: Updates PATH for the Google Cloud SDK.
if [ -f '/Users/d066382/Dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/d066382/Dev/google-cloud-sdk/path.zsh.inc'; fi
# Google Cloud: Enables shell command completion for gcloud.
if [ -f '/Users/d066382/Dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/d066382/Dev/google-cloud-sdk/completion.zsh.inc'; fi

# Fast git auto completion
# http://stackoverflow.com/questions/9810327/git-tab-autocompletion-is-useless-can-i-turn-it-off-or-optimize-it
__git_files () {
    _wanted files expl 'local files' _files
}
