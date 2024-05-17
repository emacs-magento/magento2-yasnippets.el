;;; magento2-yasnippets.el --- Yasnippet collection for Magento 2 -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2023-2024 Piotr Kwiecinski
;;
;; Version: 0.1.0
;; Package-Requires: ((emacs "29.1") (yasnippet "0.8.0"))
;; Keywords: magento, snippets
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

(declare-function yas-load-directory "yasnippet")
(defvar yas-snippet-dirs)

(defvar magento2-yasnippets-root
  (file-name-directory (or load-file-name (buffer-file-name))))

(defvar magento2-yasnippets-snippets-dir
  (expand-file-name "snippets" magento2-yasnippets-root)
  "The directory containing Magento 2 snippets.")

;;;###autoload
(defun magento2-yasnippets-initialize ()
  "Add `magento2-yasnippets-snippets-dir' to variable `yas-snippet-dirs' and load snippets."
  (add-to-list 'yas-snippet-dirs magento2-yasnippets-snippets-dir t)
  (yas-load-directory magento2-yasnippets-snippets-dir t))

;;;###autoload
(eval-after-load 'yasnippet '(magento2-yasnippets-initialize))

(provide 'magento2-yasnippets)
;;; magento2-yasnippets.el ends here
