#!/bin/sh

echo "Setting up zsh..."

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh > /dev/null 2>&1
curl -s https://gist.githubusercontent.com/Smuerdt/dc14a6363f62a64ce4e1/raw/.zshrc > ~/.zshrc

mkdir -p ~/.oh-my-zsh/custom/themes/
curl -s https://gist.githubusercontent.com/Smuerdt/0f339a20da4b20d67673/raw/myfrisk.zsh-theme > ~/.oh-my-zsh/custom/themes/myfrisk.zsh-theme

git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# needs sudo to work passwordless
sudo chsh -s $(which zsh) $(whoami)
