#!/bin/zsh

# ZSH configuration
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="lambda-gitster"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=203"
ZSH_DISABLE_COMPFIX=true		 
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

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

# Fast git auto completion
# http://stackoverflow.com/questions/9810327/git-tab-autocompletion-is-useless-can-i-turn-it-off-or-optimize-it
__git_files () {
    _wanted files expl "local files" _files
}

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR="code"
else
    export EDITOR="vim"
fi

# Travis
#[ -f /Users/$USER/.travis/travis.sh ] && source /Users/$USER/.travis/travis.sh
