#!/usr/bin/env bash

# Export platform as environmant variable and install rsync
if [ "$(uname)" == "Darwin" ]; then
    export PLATD="Mac"
    # Install brew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # Install dependencies
    brew install git rsync
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    export PLATD="Linux"
    sudo apt-get install rsync
fi

# Clone dotfiles
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ncvv/dotfiles.git .tmp
rsync --recursive --verbose --exclude '.git' .tmp/ $HOME/
rm -rf .tmp
# Don't show untracked files in dotfiles repository $HOME
dotfiles config --local status.showUntrackedFiles no
# Install everything else
chmod +x .install-dotfiles.sh
#./.install-dotfiles.sh