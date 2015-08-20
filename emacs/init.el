
;;; init.el --- Emacs configuration file

;; Add marmalade, melpa, and org repositories
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("org" . "http://orgmode.org/elpa/")))

;; Found at http://www.emacswiki.org/emacs/ShowParenMode
(show-paren-mode 1)

(tool-bar-mode -1)
(setq inhibit-splash-screen t)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
