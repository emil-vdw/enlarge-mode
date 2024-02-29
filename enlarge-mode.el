;;; enlarge-mode.el --- Enlarge the font size for better visibility.

(defvar enlarge-default-font-height
  (face-attribute 'default :height)
  "The default font height.")

(defcustom enlarge-large-font-height (round (* enlarge-default-font-height 1.2))
  "The large font for the machine."
  :type 'integer
  :group 'enlarge)

(defun enlarge--toggle-enlarged-font ()
  "Toggle the font size between default and large."
  (if enlarge-mode
      (set-face-attribute 'default nil :height enlarge-large-font-height)
    (set-face-attribute 'default nil :height enlarge-default-font-height)))

(define-minor-mode enlarge-mode
  "Toggle enlarge mode."
  :global true
  :group 'enlarge
  :lighter " LRG"
  (enlarge--toggle-enlarged-font))

(provide 'enlarge-mode)

;;; enlarge-mode.el ends here
