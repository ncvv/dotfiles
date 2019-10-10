#!/usr/bin/env bash

# XCode Tools
xcode-select --install

# Homebrew and Homebrew Packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle --file ~/.install/Brewfile

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)

# VSCode Extensions
code --install-extension $(cat ~/.install/Codefile)

# Pyenv
sh -c "$(curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash)"
