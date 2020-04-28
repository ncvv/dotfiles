#!/usr/bin/env bash
sudo softwareupdate -i -a

brew update
brew upgrade
brew cleanup

code --list-extensions > ~/.install/Codefile

# brew bundle dump
# mv Brewfile ~/.install/Brewfile

dotfiles pull
