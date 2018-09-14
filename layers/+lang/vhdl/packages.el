;;; packages.el --- C/C++ Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2018 Sylvain Benner & Contributors
;;
;; Author: Tatu Tolonen <tatu.tolonen@gmail.com>
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
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mx" "text")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mf" "fill")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "ml" "line")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mp" "port")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "ma" "align")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "ms" "subprog")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mu" "update SL")

      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mt" "template")
      (spacemacs/declare-prefix-for-mode 'vhdl-mode "mta" "A")
      (spacemacs/set-leader-keys-for-major-mode 'vhdl-mode
        "ib" 'vhdl-indent-buffer
        "ir" 'vhdl-indent-region
        "us" 'vhdl-update-sensitivity-list
        "uS" 'vhdl-update-sensitivity-list-buffer
        "cc" 'vhdl-compile
        "xc" 'vhdl-fix-case-buffer
        "ff" 'vhdl-fill-list
        "fg" 'vhdl-fill-group
        "tal" 'vhdl-template-alias
        "tar" 'vhdl-template-architecture
        "tag" 'vhdl-template-argument-list
        "tay" 'vhdl-template-array
        "tcc" 'vhdl-template-component
        "tci" 'vhdl-template-component-inst
        "tcd" 'vhdl-template-component-decl

        )

      )))
