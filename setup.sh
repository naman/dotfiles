#!/bin/bash

set -ex

FAVE_SHELL="fish"

cd

wget https://raw.githubusercontent.com/rupa/z/master/z.sh -O ~/.z

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    sudo apt install -y git curl wget ssh vim build-essential python3 python3-pip zsh fish-shell
fi

if [[ $OSTYPE == 'darwin'* ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew bundle install
fi


# install latest python3
pyenv install 3.13.0

# setup shell
if [[ $FAVE_SHELL == 'zsh'* ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

    ln -s -f ~/dotfiles/fish ~/.config/fish
    echo $(which zsh) >> /etc/shells
    chsh -s $(which zsh)
fi

if [[ $FAVE_SHELL == 'fish'* ]]; then
    ln -s -f ~/dotfiles/fish ~/.config/fish
    echo $(which fish) >> /etc/shells
    chsh -s $(which fish)

    # omf config files
    ln -s -f ~/dotfiles/omf ~/.config/omf    

    # omf
    omf install
    
    fish_update_completions
fi


# # setup tmux config
# git clone https://github.com/gpakosz/.tmux.git
ln -s -f ~/dotfiles/.tmux/.tmux.conf
ln -s -f ~/dotfiles/.tmux.conf.local 

omz reload
