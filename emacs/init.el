
;;; init.el --- Emacs configuration file

;; Add marmalade, melpa, and org repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

;; Found at http://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode 1)

;; Found at http://www.emacswiki.org/emacs/LoadPath
(add-to-list 'load-path "~/.emacs.d/elisp/")

;; Found at http://toumorokoshi.github.io/emacs-from-scratch-part-2-package-management.html
(defvar my-required-packages
  '(
    slime
    haskell-mode
    ) "List of packages to ensure are installed at launch." )

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(global-linum-mode t)

(setq-default c-default-style "linux"
	      c-basic-offset 4)
