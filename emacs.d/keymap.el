(defun delete-flycheck-errors-list ()
  (interactive)
  (cond (get-buffer-window "*Flycheck errors*" "visible")
        (delete-window (get-buffer-window "*Flycheck-errors*" "visible")))
  )

(define-key evil-normal-state-map (kbd "<SPC>lo") 'flycheck-list-errors)
(define-key evil-normal-state-map (kbd "<SPC>lc") 'delete-flycheck-errors-list)
(define-key evil-normal-state-map (kbd "<SPC>ln") 'flycheck-next-error)
(define-key evil-normal-state-map (kbd "<SPC>lp") 'flycheck-previous-error)

(define-key evil-normal-state-map (kbd "<SPC>w") 'projectile-switch-to-buffer)
(define-key evil-normal-state-map (kbd "<SPC>e") 'projectile-find-file)
