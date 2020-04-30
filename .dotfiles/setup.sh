#!/usr/bin/env bash

# Install dependencies of this setup
sudo apt-get install rsync

# Clone dotfiles
mkdir .dotfiles
git clone --separate-git-dir=$HOME/.dotfiles/.git https://github.com/ncvv/dotfiles.git .tmp
rsync --recursive --verbose --exclude '.git' .tmp/ $HOME/
rm -rf .tmp

# Install everything else
chmod +x .dotfiles/install.sh
.dotfiles/install.sh
