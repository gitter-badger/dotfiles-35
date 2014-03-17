;; Global key bindings

;; Easy-mode fullscreen rgrep
(global-set-key (kbd "M-s s")       'git-grep-fullscreen)
(global-set-key (kbd "M-s S")       'rgrep-fullscreen)

;; Jump to a definition in the current file
(global-set-key (kbd "C-x C-i")     'ido-imenu)

;; File finding
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-p") 'find-or-create-file-at-point)
(global-set-key (kbd "C-x M-p") 'find-or-create-file-at-point-other-window)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; toggle two most recent buffers
(fset 'quick-switch-buffer [?\C-x ?b return])
(global-set-key (kbd "s-b") 'quick-switch-buffer)

(global-set-key (kbd "s-y") 'bury-buffer)

;; Revert without any fuss
(global-set-key (kbd "M-<escape>") (λ (revert-buffer t t)))

;; Edit file with sudo
(global-set-key (kbd "M-s e") 'sudo-edit)

;; Copy file path to kill ring
(global-set-key (kbd "C-x M-w") 'copy-current-file-path)

;; Window switching
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x -") 'toggle-window-split)
(global-set-key (kbd "C-x C--") 'rotate-windows)
(global-unset-key (kbd "C-x C-+")) ;; don't zoom like this

(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)

;; Bookmarks
(global-set-key (kbd "<f2>")        'bm-toggle)
(global-set-key (kbd "C-<f2>")      'bm-next)
(global-set-key (kbd "S-<f2>")      'bm-previous)

;; Flymake
(global-set-key (kbd "C-<f9>")      'flymake-goto-prev-error)
(global-set-key (kbd "C-<f10>")     'flymake-goto-next-error)

;; Zap to char
(global-set-key (kbd "M-z") 'zap-up-to-char)
(global-set-key (kbd "s-z") (lambda (char) (interactive "cZap up to char backwards: ") (zap-up-to-char -1 char)))

;; iy-go-to-char - like f in Vim
(global-set-key (kbd "M-m") 'jump-char-forward)
(global-set-key (kbd "M-M") 'jump-char-backward)
(global-set-key (kbd "s-m") 'jump-char-backward)

;; vim's ci and co commands
(global-set-key (kbd "M-I")         'change-inner)
(global-set-key (kbd "M-O")         'change-outer)

(global-set-key (kbd "s-i") 'copy-inner)
(global-set-key (kbd "s-o") 'copy-outer)

;; Expand region (increases selected region by semantic units)
(global-set-key (if is-mac (kbd "C-@") (kbd "C-'")) 'er/expand-region)

;; Remap back-to-indentation
(global-set-key (kbd "M-i")         'back-to-indentation)

;; Perform general cleanup.
(global-set-key (kbd "C-c n") 'cleanup-buffer)
(global-set-key (kbd "C-c C-n") 'cleanup-buffer)
(global-set-key (kbd "C-c C-<return>") 'delete-blank-lines)

;; Turn on the menu bar for exploring new modes
;(global-set-key (kbd "C-<f10>") 'menu-bar-mode)

;; Compilation
(global-set-key (kbd "S-<f7>")      'compile)
(global-set-key (kbd "C-<f7>")      'python-pylint)
(global-set-key (kbd "C-<f8>")      'python-pep8)
(global-set-key (kbd "S-<f8>")      'python-compile)
(global-set-key (kbd "S-<f4>")      'next-error)
(global-set-key (kbd "C-S-<f4>")    'previous-error)
(global-set-key (kbd "S-M-<f4>")    'first-error)

;; Set anchor to start rectangular-region-mode
(global-set-key (kbd "H-SPC") 'set-rectangular-region-anchor)

;; Replace rectangle-text with inline-string-rectangle
(global-set-key (kbd "C-x r t") 'inline-string-rectangle)

;; Quickly jump in document with ace-jump-mode
(define-key global-map (kbd "C-ø") 'ace-jump-mode)

;; magit
(global-set-key (kbd "C-x g")       'magit-status)
(autoload 'magit-status "magit")

;; Experimental multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-c C-e") 'mc/edit-ends-of-lines)
(global-set-key (kbd "C-S-c C-a") 'mc/edit-beginnings-of-lines)

;; Mark additional regions matching current region
(global-set-key (kbd "M-æ") 'mc/mark-all-dwim)
(global-set-key (kbd "C-å") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-æ") 'mc/mark-next-like-this)
(global-set-key (kbd "C-Æ") 'mc/mark-more-like-this-extended)
(global-set-key (kbd "M-å") 'mc/mark-all-in-region)

;; Symbol and word specific mark-more
(global-set-key (kbd "s-æ") 'mc/mark-next-word-like-this)
(global-set-key (kbd "s-å") 'mc/mark-previous-word-like-this)
(global-set-key (kbd "M-s-æ") 'mc/mark-all-words-like-this)
(global-set-key (kbd "s-Æ") 'mc/mark-next-symbol-like-this)
(global-set-key (kbd "s-Å") 'mc/mark-previous-symbol-like-this)
(global-set-key (kbd "M-s-Æ") 'mc/mark-all-symbols-like-this)

;; Extra multiple cursors stuff
(global-set-key (kbd "C-~") 'mc/reverse-regions)
(global-set-key (kbd "M-~") 'mc/sort-regions)
(global-set-key (kbd "H-~") 'mc/insert-numbers)

(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)

;; org-mode
(global-set-key (kbd "C-c l")       'org-store-link)
(global-set-key (kbd "C-c c")       'org-capture)
(global-set-key (kbd "C-c a")       'org-agenda)
(global-set-key (kbd "C-c b")       'org-iswitchb)

;; Smex
(global-set-key (kbd "M-x")         'smex)
(global-set-key (kbd "M-X")         'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; highlight-symbol
(global-set-key (kbd "<f10>") 'highlight-symbol-at-point)
(global-set-key (kbd "<f11>") 'highlight-symbol-prev)
(global-set-key (kbd "<f12>") 'highlight-symbol-next)
(global-set-key (kbd "<f9>") 'highlight-symbol-query-replace)

;; Evil
(global-set-key (kbd "C-*") 'evil-search-symbol-forward)
(global-set-key (kbd "C-#") 'evil-search-symbol-backward)
(global-set-key (kbd "C-c +") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C-c -") 'evil-numbers/dec-at-pt)

(global-set-key (kbd "M-h") 'kill-region-or-backward-word)

;; Transpose stuff with M-t
(global-unset-key (kbd "M-t")) ;; which used to be transpose-words
(global-set-key (kbd "M-t l") 'transpose-lines)
(global-set-key (kbd "M-t w") 'transpose-words)
(global-set-key (kbd "M-t s") 'transpose-sexps)
(global-set-key (kbd "M-t p") 'transpose-params)

;; Interactive selective display
(global-set-key (kbd "C-x $") 'inc-selective-display)

;; Change next underscore with a camel case
(global-set-key (kbd "C-c C--") 'replace-next-underscore-with-camel)
(global-set-key (kbd "M-s M--") 'snakeify-current-word)

;; Change word separators
(global-unset-key (kbd "C-x +")) ;; used to be balance-windows
(global-set-key (kbd "C-x + -") (λ (replace-region-by 's-dashed-words)))
(global-set-key (kbd "C-x + _") (λ (replace-region-by 's-snake-case)))
(global-set-key (kbd "C-x + c") (λ (replace-region-by 's-lower-camel-case)))
(global-set-key (kbd "C-x + C") (λ (replace-region-by 's-upper-camel-case)))

;; Killing text
(global-set-key (kbd "C-S-k") 'kill-and-retry-line)
(global-set-key (kbd "C-w") 'kill-region-or-backward-word)
(global-set-key (kbd "C-c C-w") 'kill-to-beginning-of-line)

;; Use M-w for copy-line if no active region
(global-set-key (kbd "M-w") 'save-region-or-current-line)
(global-set-key (kbd "s-w") 'save-region-or-current-line)
(global-set-key (kbd "M-W") (λ (save-region-or-current-line 1)))

;; Indentation help
(global-set-key (kbd "M-j") (λ (join-line -1)))

;; Navigation bindings
(global-set-key [remap goto-line] 'goto-line-with-feedback)

;(global-set-key (kbd "<prior>") 'beginning-of-buffer)
;(global-set-key (kbd "<home>") 'beginning-of-buffer)
;(global-set-key (kbd "<next>") 'end-of-buffer)
;(global-set-key (kbd "<end>") 'end-of-buffer)
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "M-n") 'forward-paragraph)

(global-set-key (kbd "M-<up>") 'smart-up)
(global-set-key (kbd "M-<down>") 'smart-down)
(global-set-key (kbd "M-<left>") 'smart-backward)
(global-set-key (kbd "M-<right>") 'smart-forward)

;; Like isearch, but adds region (if any) to history and deactivates mark
(global-set-key (kbd "C-s") 'isearch-forward-use-region)
(global-set-key (kbd "C-r") 'isearch-backward-use-region)

;; Like isearch-*-use-region, but doesn't fuck with the active region
(global-set-key (kbd "C-S-s") 'isearch-forward)
(global-set-key (kbd "C-S-r") 'isearch-backward)

;; Move more quickly
(global-set-key (kbd "C-S-n") (λ (ignore-errors (next-line 5))))
(global-set-key (kbd "C-S-p") (λ (ignore-errors (previous-line 5))))
(global-set-key (kbd "C-S-f") (λ (ignore-errors (forward-char 5))))
(global-set-key (kbd "C-S-b") (λ (ignore-errors (backward-char 5))))

(global-set-key (kbd "H-*") 'beginning-of-buffer) ;; H-p
(global-set-key (kbd "H-n") 'end-of-buffer)

;; Query replace regex key binding
;(global-set-key (kbd "M-&") 'query-replace-regexp)

;; Yank selection in isearch
(define-key isearch-mode-map (kbd "C-o") 'isearch-yank-selection)

;; Comment/uncomment block
(global-set-key (kbd "C-c c") 'comment-or-uncomment-region)
(global-set-key (kbd "C-c u") 'uncomment-region)

;; Eval buffer
(global-set-key (kbd "C-c C-k") 'eval-buffer)

;; Create scratch buffer
(global-set-key (kbd "C-c b") 'create-scratch-buffer)

;; Move windows, even in org-mode
(global-set-key (kbd "<s-right>") 'windmove-right)
(global-set-key (kbd "<s-left>") 'windmove-left)
(global-set-key (kbd "<s-up>") 'windmove-up)
(global-set-key (kbd "<s-down>") 'windmove-down)

;; Clever newlines
(global-set-key (kbd "C-o") 'open-line-and-indent)
(global-set-key (kbd "<C-return>") 'open-line-below)
(global-set-key (kbd "<C-S-return>") 'open-line-above)
(global-set-key (kbd "<M-return>") 'new-line-dwim)

;; Duplicate region
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

;; Line movement
(global-set-key (kbd "<C-S-down>") 'move-text-down)
(global-set-key (kbd "<C-S-up>") 'move-text-up)

;; Fold the active region
(global-set-key (kbd "C-c C-f") 'fold-this-all)
(global-set-key (kbd "C-c C-F") 'fold-this)
(global-set-key (kbd "C-c M-f") 'fold-this-unfold-all)

;; Yank and indent
(global-set-key (kbd "C-S-y") 'yank-unindented)

;; Toggle quotes
(global-set-key (kbd "C-\"") 'toggle-quotes)

;; Increase number at point (or other change based on prefix arg)
(global-set-key (kbd "C-+") 'change-number-at-point)
(global-set-key (kbd "C-?") 'subtract-number-at-point)
(eval-after-load 'undo-tree '(define-key undo-tree-map (kbd "C-?") nil))

;; Browse the kill ring
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; Jump from file to containing directory
(global-set-key (kbd "C-x C-j") 'dired-jump) (autoload 'dired-jump "dired")
(global-set-key (kbd "C-x M-j") '(λ (dired-jump 1)))

;; Multi-occur
(global-set-key (kbd "M-s m") 'multi-occur)
(global-set-key (kbd "M-s M") 'multi-occur-in-matching-buffers)

;; Display and edit occurances of regexp in buffer
(global-set-key (kbd "C-c o") 'occur)

;; Find files by name and display results in dired
(global-set-key (kbd "M-s f") 'find-name-dired)

;; Find file in project
(global-set-key (kbd "C-x o") 'find-file-in-project)

;; Find file in project, with specific patterns
(global-unset-key (kbd "C-x C-o")) ;; which used to be delete-blank-lines (also bound to C-c C-<return>)
(global-set-key (kbd "C-x C-o py") (ffip-create-pattern-file-finder "*.py"))
(global-set-key (kbd "C-x C-o cc") (ffip-create-pattern-file-finder "*.c" "*.h" "*.cpp" "*.hpp"))
(global-set-key (kbd "C-x C-o ja") (ffip-create-pattern-file-finder "*.jade"))
(global-set-key (kbd "C-x C-o js") (ffip-create-pattern-file-finder "*.js"))
(global-set-key (kbd "C-x C-o ht") (ffip-create-pattern-file-finder "*.html"))
(global-set-key (kbd "C-x C-o cs") (ffip-create-pattern-file-finder "*.css"))
(global-set-key (kbd "C-x C-o el") (ffip-create-pattern-file-finder "*.el"))
(global-set-key (kbd "C-x C-o rb") (ffip-create-pattern-file-finder "*.rb"))
(global-set-key (kbd "C-x C-o or") (ffip-create-pattern-file-finder "*.org"))
(global-set-key (kbd "C-x C-o tx") (ffip-create-pattern-file-finder "*.txt"))
(global-set-key (kbd "C-x C-o !") (ffip-create-pattern-file-finder "*"))

;; View occurrence in occur mode
(define-key occur-mode-map (kbd "v") 'occur-mode-display-occurrence)
(define-key occur-mode-map (kbd "n") 'next-line)
(define-key occur-mode-map (kbd "p") 'previous-line)

;; Misc
(global-set-key (kbd "<f1>")         'goto-line)
(global-set-key (kbd "M-<return>")  'toggle-fullscreen)
(global-set-key (kbd "C-<tab>")     'other-window)

(global-set-key [(control x) (control c)]
                (function
                 (lambda () (interactive)
                   (cond ((y-or-n-p "Quit? ")
                          (save-buffers-kill-emacs))))))


(provide 'init-key-bindings)

