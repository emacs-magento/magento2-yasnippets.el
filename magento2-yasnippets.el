;;; magento2-yasnippets.el --- Collection of Magento 2 snippets -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023 Piotr Kwiecinski
;;
;; Version: 0.1.0
;; Package-Requires: ((emacs "29.1") (yasnippet "0.8.0"))
;; Keywords: snippets
;; Homepage: https://github.com/emacs-magento/magento2-yasnippets.el
;;
;;; License:
;;
;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;
;;; Commentary:
;;
;; Magento 2 snippet collection for yasnippet package.
;;
;;; Code:

(require 'yasnippet)
(require 'magento2-yasnippets-lib)

(defvar magento2-yasnippets-dir
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun magento2-yasnippets-initialize ()
  "Load `magento2-yasnippets' snippets directory."
  (setq yas-wrap-around-region nil)
  (let ((snippet-dir (expand-file-name "snippets" magento2-yasnippets-dir)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snippet-dir t))
    (yas-load-directory snippet-dir)))

;;;###autoload
(eval-after-load 'yasnippet
  (lambda () (magento2-yasnippets-initialize)))

(provide 'magento2-yasnippets)
;;; magento2-yasnippets.el ends here
