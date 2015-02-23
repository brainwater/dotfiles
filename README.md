dotfiles
========

Personal dotfiles to sync between computers

Setup
-----
bash/bash_profile should be linked to from ~/.bash_profile
If bash does not execute/source ~/.bash_profile on start, then add 'source ${HOME}/.bash_profile' to the ~/.bashrc file

emacs/init.el should be linked to from ~/.emacs.d/init.el
emacs/elisp should be linked to from ~/.emacs.d/elisp
Don't link ~/.emacs.d directly to emacs since there are caches and the like that should not be synced

gtk-3.0 should be linked to from ~/.config/gtk-3.0

openbox should be linked to from ~/.config/openbox

tint2 should be linked to from ~/.config/tint2