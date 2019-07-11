#!/usr/bin/env bash
brew install $(cat ./install/Brewfile)
brew cask install $(cat ./install/Caskfile)
code --install-extension $(cat ./install/Codefile)