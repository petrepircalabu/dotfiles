(defun my-change-window-divider ()
  (let ((display-table (or buffer-display-table standard-display-table)))
    (set-display-table-slot display-table 5 ?│)
    (set-window-display-table (selected-window) display-table)
    (set-face-background 'vertical-border (face-background 'default))
    (set-face-foreground 'vertical-border "gray")
    ))

(add-hook 'window-configuration-change-hook 'my-change-window-divider)
