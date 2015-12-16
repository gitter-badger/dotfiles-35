(message "** init--ggtags **")

(use-package ggtags
             :ensure t
             :config
             (setq ggtags-completing-read-function nil)
             (add-hook 'c-mode-common-hook
                       (lambda ()
                         (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
                           (ggtags-mode 1))))
             )

(torpeanders:provide)
