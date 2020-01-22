#!/bin/bash

cd 

# # setup fish config
# brew cask install fish-shell
sudo apt install fish


ln -s -f ~/dotfiles/config.fish ~/.config/fish/config.fish 
ln -s -f ~/dotfiles/functions ~/.config/fish/functions
curl -L https://get.oh-my.fish | fish
omf update

omf install bang-bang sudope
omf doctor
omf reload

# # setup tmux config
# brew install tmux
# brew cask install tmux
sudo apt install tmux

git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/.tmux/.tmux.conf
ln -s -f ~/dotfiles/.tmux.conf.local 

tmux

