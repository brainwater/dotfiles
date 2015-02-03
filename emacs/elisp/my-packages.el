;;; my-packages.el

(defun my-packages-installed-p ()
  (let ((retval t))
    (dolist (p my-required-packages retval)
      (if (not (package-installed-p p))
	  (setq retval nil)))))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))




