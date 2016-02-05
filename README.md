# dotfiles
========

Personal dotfiles to sync between computers

## Manual Setup
-----
### Bash
bash/bash_profile should be linked to from ~/.bash_profile
If bash does not execute/source ~/.bash_profile on start, then add 'source ${HOME}/.bash_profile' to the ~/.bashrc file

### TTY
To change the capslock into ctrl, add to the XKBOPTIONS variable 'ctrl:nocps' in /etc/default/keyboard (at least for debian jessie)
Example /etc/default/keyboard file:
```
# KEYBOARD CONFIGURATION FILE

# Consult the keyboard(5) manual page.

XKBMODEL="pc105"
XKBLAYOUT="us"
XKBVARIANT=""
XKBOPTIONS="ctrl:nocaps"

BACKSPACE="guess"
```

##Notes
-----
emacs/init.el should be linked to from ~/.emacs.d/init.el
emacs/elisp should be linked to from ~/.emacs.d/elisp
Don't link ~/.emacs.d directly to emacs since there are caches and the like that should not be synced

gtk-3.0 should be linked to from ~/.config/gtk-3.0

openbox should be linked to from ~/.config/openbox

tint2 should be linked to from ~/.config/tint2
