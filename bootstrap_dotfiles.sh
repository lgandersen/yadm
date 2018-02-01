#!/bin/sh
# set PATH so it includes user's private bin if it exists
if ! [ -d "$HOME/bin" ] ; then
    mkdir ~/bin
fi

ln -s ~/.yadm-project/yadm ~/bin/yadm
yadm clone https://github.com/lgandersen/dotfiles.git
yadm status
