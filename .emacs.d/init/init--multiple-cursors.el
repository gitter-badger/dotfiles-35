(message "** init--multiple-cursors **")

(use-package multiple-cursors
  :ensure t
  :config
  :bind (
  ;; Experimental multiple-cursors  
  ("C-S-c C-S-c"   . mc/edit-lines)
  ("C-S-c C-e"     . mc/edit-ends-of-lines)
  ("C-S-c C-a"     . mc/edit-beginnings-of-lines)
  ;; Mark additional regions matching current region
  ("M-æ"           . mc/mark-all-dwim)
  ("C-å"           . mc/mark-previous-like-this)
  ("C-æ"           . mc/mark-next-like-this)
  ("C-Æ"           . mc/mark-more-like-this-extended)
  ("M-å"           . mc/mark-all-in-region)
  ;; Symbol and word specific mark-more
  ("s-æ"           . mc/mark-next-word-like-this)
  ("s-å"           . mc/mark-previous-word-like-this)
  ("M-s-æ"         . mc/mark-all-words-like-this)
  ("s-Æ"           . mc/mark-next-symbol-like-this)
  ("s-Å"           . mc/mark-previous-symbol-like-this)
  ("M-s-Æ"         . mc/mark-all-symbols-like-this)
  ;; Extra multiple cursors stuff
  ("C-~"           . mc/reverse-regions)
  ("M-~"           . mc/sort-regions)
  ("H-~"           . mc/insert-numbers)
  ("C-S-<mouse-1>" . mc/add-cursor-on-click))
  )

(torpeanders:provide)
