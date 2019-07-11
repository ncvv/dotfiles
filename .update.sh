#!/usr/bin/env bash
sudo softwareupdate -i -a

brew update
brew upgrade
brew cleanup

code --list-extensions > ~/.install/Codefile
brew list > ~/.install/Brewfile
brew cask list > ~/.install/Caskfile
dotfiles pull

dotfiles add -u
dotfiles commit "Update dotfiles."
# Leave out push for now, allow for stashing
#dotfiles push origin master