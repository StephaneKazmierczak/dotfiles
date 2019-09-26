#!/bin/bash

# save local install dir
export DOTFILE_DIR=$(pwd)

# sudo install 
sudo apt update && sudo apt install zsh fzf vim

# got to the home foder 
cd $HOME 

# install oh my zsh 
# sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
#git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#ZSH="$HOME/.oh-my-zsh"
#ZSH_CUSTOM="$ZSH/custom"




# install dependancy 
# theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
ln -s $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme $HOME/.oh-my-zsh/custom/themes/powerlevel10k.zsh-theme

# plugin 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# symlink files
# ln -s $DOTFILE_DIR/.* $HOME/. # need to exclude .git 

# change shell and source 
chsh -s $(which zsh)
source .zshrc
