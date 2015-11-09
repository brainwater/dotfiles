cd "${HOME}"
ln -n -s ../dotfiles/gtk-2.0 .config/gtk-2.0
ln -n -s ../dotfiles/gtk-3.0 .config/gtk-3.0
ln -n -s ../dotfiles/openbox .config/openbox
ln -n -s ../dotfiles/tint2 .config/tint2
mkdir .emacs.d
ln -n -s ../dotfiles/emacs/init.el .emacs.d/init.el
ln -n -s ../dotfiles/emacs/elisp .emacs.d/elisp
ln -n -s dotfiles/bash/bash_profile .bash_profile
ln -n -s dotfiles/xmodmap/Xmodmap .Xmodmap
ln -n -s dotfiles/screen/screenrc .screenrc
