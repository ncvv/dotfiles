#!/usr/bin/env bash

sudo apt update
sudo apt upgrade
# apt
xargs -a $HOME/.dotfiles/.install/Linux/packages -r sudo apt-get install

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
chsh -s $(which zsh)
rm .zshrc
mv .zshrc-pre-oh-my-zsh .zshrc
source .zshrc

# VSCode Extensions
#code --install-extension $(cat ~/.install/Codefile)

# pyenv
#sh -c "$(curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash)"
