#!/bin/sh
# set PATH so it includes user's private bin if it exists
if ! [ -d "$HOME/bin" ] ; then
    mkdir ~/bin
fi

ln -s ~/.yadm-project/yadm ~/bin/yadm
git clone https://github.com/lgandersen/vimrc.git $HOME/.vim_runtime
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
~/.yadm-project/yadm clone https://github.com/lgandersen/dotfiles.git
~/.yadm-project/yadm status
