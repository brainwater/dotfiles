;;; init.el --- Emacs configuration file

(require 'package)
;; Add marmalade, melpa, and org repositories
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.milkbox.net/packages/")
			 ("marmalade" . "https://marmalade-repo.org/packages/")))

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
    auto-complete
    ac-python
    fill-column-indicator
    python-mode
    pymacs
    ggtags
    ) "List of packages to ensure are installed at launch." )

(require 'my-packages)

(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(global-linum-mode t)

;;;(require 'ido)
;;;(ido-mode t)

(require 'python-mode)
(setq-default py-shell-name "ipython3")
(setq-default py-which-bufname "ipython3")
(setq py-python-command-args
      '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)
(setq py-shell-switch-buffers-on-execute-p t)
(setq py-switch-buffers-on-execute-p t)
(setq py-split-windows-on-execute-p nil)
(setq py-smart-indentation t)

(require 'auto-complete)
(require 'auto-complete-config)
(require 'ac-python)
(ac-config-default)

(require 'fill-column-indicator)
(add-hook 'c-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'fci-mode)
(remove-hook 'python-mode-hook 'pylint-add-key-bindings)
(remove-hook 'python-mode-hook 'pylint-add-menu-items)

(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g d") 'ggtags-find-definition)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(setq-default c-default-style "linux"
	      c-basic-offset 4)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (manoj-dark)))
 '(indent-tabs-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
