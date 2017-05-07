;;; packages.el --- dired-open layer packages file for Spacemacs.
;;
;; Copyright (c) 2012-2017 Sylvain Benner & Contributors
;;
;; Author: Kuroi Mato <venmos@fuck.gfw.es>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;;; Code:

(setq dired-open-packages '(
                            dired-open
                            dired+
                            ))

(defun dired-open/init-dired-open ()
  (use-package dired-open
    :config
    (setq dired-open-extensions
          '(
            ("docx" . "libreoffice")
            ("doc" . "libreoffice")
            ("xlsx" . "libreoffice")
            ("xls" . "libreoffice")
            ("mkv" . "mpv")
            ("mp4" . "mpv")
            ("avi" . "mpv")
            ("jpg" . "eog")
            ("jpeg" . "eog")
            ("png" . "eog")
            ))))

(defun dired-open/init-dired+ ()
  (use-package dired+
    :init
    (progn
      (spacemacs/set-leader-keys
       "ab" 'diredp-do-bookmark))))

;;; packages.el ends here
