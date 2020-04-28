#!/usr/bin/env bash

if [ $PLATD == "Mac" ]; then # Mac
    # XCode Tools
    xcode-select --install

    # Homebrew and Homebrew Packages
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew bundle --file ~/.install/Mac/Brewfile
else
    sudo apt update
    sudo apt upgrade
    # apt
    xargs -ar ~/.install/Linux/packages sudo apt-get install
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)

# VSCode Extensions
#code --install-extension $(cat ~/.install/Codefile)

# pyenv
#sh -c "$(curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash)"
