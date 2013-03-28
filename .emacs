(add-to-list 'load-path "~/_emacs")
(add-to-list 'load-path "~/install/ecb-2.40")
(add-to-list 'load-path "~/_emacs/codepilot")
(add-to-list 'load-path "~/_emacs/emacs-eclim")
(add-to-list 'load-path "~/_emacs/icicles")
(add-to-list 'load-path "~/_emacs/gnuserv")


(add-to-list 'load-path "~/install/yasnippet-0.6.1c")

(add-to-list 'load-path "~/install/auto-complete-1.3.1")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/install/auto-complete-1.3.1/dict")
(ac-config-default)


(set-selection-coding-system 'iso-2022-8bit-ss2-dos)
(set-clipboard-coding-system 'iso-2022-8bit-ss2-dos)
(load "base.el")
(load "cyexpand.el")
(load "cykbd.el")
(load "addon.el")


(load "cycode.el")

;;===============================================================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.g
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
 
;;===========================================================
;;========================
(defun runperl()
  "run perl,ÃŠÂ§ÃšÂ¡Ã¥ÂœÃ¥Ã§ÂŒÃ¥Â²Ã¥ÂºÃ§PerlÃ§ÂšÃ¥Âº"
  (interactive)
  ;(save-buffer)
  (let ((filename buffer-file-name)
 (cmd "")
 (oldbuf (current-buffer))
 (end (point-max)))
    (if filename
 (save-buffer)
      (save-excursion
 (setq filename (concat (getenv "tmp") "/temp.pl"))
 (set-buffer (create-file-buffer filename))
 (insert-buffer-substring oldbuf 1 end)
 (write-file filename)
 (kill-buffer (current-buffer))))
    (setq cmd (concat "perl -w " filename))
    (message "%s  ..." cmd)
    (shell-command cmd)))
(global-set-key[(meta o)] 'runperl) ;bind-key alt+o:runperl
;;============================================================
