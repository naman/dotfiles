#!/bin/bash

set -e

cd 

# FISH
# # setup fish config
# brew cask install fish-shell
# sudo apt install -y fish

# ln -s -f ~/dotfiles/config.fish ~/.config/fish/config.fish 
# ln -s -f ~/dotfiles/functions ~/.config/fish/functions
# curl -L https://get.oh-my.fish | fish -c

# omf update
# omf install bang-bang sudope
# omf doctor
# omf reload

# ZSH
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search


ln -s -f  ~/dotfiles/.zshrc ~/.zshrc 

# # setup tmux config
# brew install tmux
sudo apt install -y tmux

git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf
ln -s -f ~/dotfiles/.tmux.conf.local 

# tmux
