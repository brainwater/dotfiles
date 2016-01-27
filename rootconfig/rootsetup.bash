#!/bin/bash

# Install packages we need
sudo apt-get install -y feh tint2 emacs global autossh gmrun
# Copy the openbox desktop session file that will run openbox from /usr/local
sudo cp -n -v "${HOME}/dotfiles/rootconfig/xsessions/CustomOpenbox.desktop" "/usr/share/xsessions/CustomOpenbox.desktop"
