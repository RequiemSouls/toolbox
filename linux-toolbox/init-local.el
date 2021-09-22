;;; init-local.el --- Local config
;;; Commentary:

;;; Code:
(require-package 'evil)
(evil-mode 1)

;;; general config
(require-package 'general)
(general-evil-setup t)
(general-create-definer common-leader-def
  :prefix "SPC"
  :states '(normal visual))
(common-leader-def
  "ff" 'find-file
  "xb" 'switch-to-buffer
  "gg" 'projectile-grep
  "dw" 'delete-window
  "df" 'delete-frame
  )
(provide 'init-local)
;;; init-local.el ends here
