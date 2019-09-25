#!/bin/bash

# save local install dir
DOTFILE_DIR=$(pwd)

# sudo install 
sudo apt update && sudo apt install zsh fzf vim

# got to the home foder 
cd $HOME 

# install oh my zsh 
sh -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"

# install dependancy 
# theme
git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
ln -s $HOME/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme $HOME/.oh-my-zsh/custom/themes/powerlevel10k.zsh-theme

# plugin 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# remove default zshrc 
rm $HOME/.zshrc

# symlink files
ln -s $DOTFILE_DIR/.* $HOME/.
