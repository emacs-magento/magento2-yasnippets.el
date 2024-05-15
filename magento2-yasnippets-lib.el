;;; magento2-yasnippets-lib.el --- Utility functions  -*- lexical-binding: t; -*-

;; Copyright (C) 2024  Piotr Kwiecinski

;; Author: Piotr Kwiecinski <piokwiecinski@gmail.com>
;; Keywords: convenience

(defun magento2-yasnippets-buffer-name-suffix-p (suffix)
  "Check if buffer name has a given SUFFIX."
  (and buffer-file-name (string-suffix-p suffix buffer-file-name)))

(provide 'magento2-yasnippets-lib)
