cd "${HOME}"
ln -s ../dotfiles/gtk-2.0 .config/gtk-2.0
ln -s ../dotfiles/gtk-3.0 .config/gtk-3.0
ln -s ../dotfiles/openbox .config/openbox
ln -s ../dotfiles/tint2
mkdir .emacs.d
ln -s ../dotfiles/emacs/init.el .emacs.d/init.el
ln -s ../dotfiles/emacs/elisp .emacs.d/elisp
ln -s dotfiles/bash/bash_profile .bash_profile
ln -s dotfiles/xmodmap/Xmodmap .Xmodmap
