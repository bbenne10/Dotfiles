(package-initialize)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

(defvar my-packages
  '(ample-theme anaconda-mode diminish dired+ evil evil-matchit evil-surround
    fic-mode flycheck flx-ido projectile puppet-mode smooth-scrolling
    spaceline company company-anaconda pyenv-mode rainbow-mode notmuch web-mode)
  "A list of packages to install"
  )

(defun my-packages-installed-p ()
  (loop for p in my-packages
    when (not (package-installed-p p)) do (return nil)
    finally (return t)
  )
)

(unless (my-packages-installed-p)
  (package-refresh-contents)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p)
   )
  )
)

;; Load configurations
(mapc (lambda (name)
       (message "Loading ~/.emacs.d/packages.d/%s.el" (symbol-name name))
       (with-demoted-errors (load (concat "~/.emacs.d/packages.d/" (symbol-name name) ".el") nil t)))
 my-packages
)
