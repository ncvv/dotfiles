#!/usr/bin/env bash

if [[ $OSTYPE == "linux-gnu" ]]; then
    sudo apt-get install rsync
elif [[ $OSTYPE == "darwin" ]]; then
    # Install brew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    # Install dependencies
    brew install git rsync
fi

# Clone dotfiles
git clone --separate-git-dir=$HOME/.dotfiles/.git https://github.com/ncvv/dotfiles.git .tmp
rsync --recursive --verbose --exclude '.git' .tmp/ $HOME/
rm -rf .tmp
# Don't show untracked files in dotfiles repository $HOME
dotfiles config --local status.showUntrackedFiles no
# Install everything else
chmod +x .install-dotfiles.sh
#./.install-dotfiles.sh