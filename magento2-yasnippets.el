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

(defvar magento2-yasnippets-templates-dir
  (expand-file-name "templates/" magento2-yasnippets-root)
  "Directory containing file templates for Magento 2.")

(defun magento2-yasnippets-buffer-name-suffix-p (suffix)
  "Check if buffer name has a given SUFFIX."
  (and buffer-file-name (string-suffix-p suffix buffer-file-name)))

(defun magento2-yasnippets-buffer-name-contain-p (regex)
  "Check if buffer name contains a given REGEX."
  (and buffer-file-name (string-match-p regex buffer-file-name)))

;;;###autoload
(defun magento2-yasnippets-initialize ()
  "Add `magento2-yasnippets-snippets-dir' to variable `yas-snippet-dirs' and load snippets."
  (add-to-list 'yas-snippet-dirs magento2-yasnippets-snippets-dir t)
  (yas-load-directory magento2-yasnippets-snippets-dir t))

;;;###autoload
(eval-after-load 'yasnippet '(magento2-yasnippets-initialize))

(provide 'magento2-yasnippets)
;;; magento2-yasnippets.el ends here
