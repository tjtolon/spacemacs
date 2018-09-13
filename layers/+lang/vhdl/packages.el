;;; packages.el --- C/C++ Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq vhdl-packages
  '(
    vhdl-mode
    ))

(defun vhdl/init-vhdl-mode ()
  (use-package vhdl-mode
    :defer t
    :init
    :config
    (progn
      (require 'vhdl-mode)
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mi" "indent")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mu" "update")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mc" "compile")
      (spacemacs/set-leader-keys-for-major-mode 'vhdl-mode
        "ib" 'vhdl-indent-buffer
        "ir" 'vhdl-indent-region
        "us" 'vhdl-update-sensitivity-list
        "uS" 'vhdl-update-sensitivity-list-buffer
        "cc" 'vhdl-compile)

      )))
