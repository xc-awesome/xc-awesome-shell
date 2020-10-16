#!/bin/bash

echo  ::::::: Begin installing and configuring jumpuser users :::::::

echo Yum install zsh ...
yum install zsh -y

echo Yum install git
yum install git -y

echo Yum install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo Git clone oh my zsh plugin for zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

echo Git clone oh my zsh plugin for zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

echo Git clone oh my zsh plugin for autojump
git clone git://github.com/wting/autojump.git  $ZSH_CUSTOM/plugins/autojump

echo Install autojump plugin
cd $ZSH_CUSTOM/plugins/autojump; ./install.py

echo Configuration ohmyzsh environment
wget https://raw.githubusercontent.com/xc-awesome/ohmyzsh-install/main/.zshrc-jumpuser -O ~/.zshrc

echo Source ~/.zshrc
source ~/.zshrc