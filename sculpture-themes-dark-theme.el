;;; sculpture-themes-dark-theme.el --- Dark theme with vivid colors -*- lexical-binding: t; -*-

;; Copyright (C) 2021 t-e-r-m

;; Author: t-e-r-m <newenewen@tutanota.com>
;; URL: https://github.com/t-e-r-m/sculpture-theme
;; Created: January 06, 2021
;; Modified: March 7, 2022
;; Version: 1.4.3

;; Local variables:
;; package-lint-main-file: "sculpture-themes.el"
;; end:

;; sculpture-themes-dark : A dark theme for emacs with vivid colors, inspired by
;; coloring pigments.

;; Copyright (C) 2021 t-e-r-m

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; This theme takes inspiration from the pigments found on
;; now bare Greco-Roman statues.

;; Monospace fonts are boring -- they make my eyes sore.

;; The dark version prizes colors over readability.

;;; Code:
(require 'sculpture-themes)

;;;; Custom Faces
(defface sculpture-themes-dark-head-outline-1        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-2        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-3        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-4        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-5        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-6        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-7        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-head-outline-8        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-modeline-percent      nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-modeline-line         nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-modeline-mode         nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-modeline-workspace    nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-variable-pitch-italic nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-1        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-2        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-3        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-4        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-5        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-6        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-7        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-title-8        nil nil :group 'sculpture-themes-dark)
(defface sculpture-themes-dark-elfeed-star-face      nil nil :group 'sculpture-themes-dark)

;;;; definition
(deftheme sculpture-themes-dark
  "This theme takes inspiration from the pigments found on now bare Greco-Roman statues.")

(let ((class '((class color)))
;;;;; palette

      (bg "#000000")
      (bw00 "#000000")
      (bw01 "#111111")
      (bw02 "#222222")
      (bw03 "#333333")
      (bw04 "#444444")
      (bw05 "#555555")
      (bw06 "#666666")
      (bw07 "#777777")
      (bw08 "#888888")
      (bw09 "#999999")
      (bw10 "#aaaaaa")
      (bw11 "#bbbbbb")
      (bw12 "#cccccc")
      (bw13 "#dddddd")
      (bw14 "#eeeeee")

      (ha00 "#713238")
      (ha01 "#003564")
      (ha02 "#5B542E")
      (ha04 "#C8BF19")
      (ha05 "#421212")
      (ha06 "#642105")
      (ha07 "#767650")
      (ha08 "#040407")
      (ha09 "#080808")
      (ha10 "#2B1B26")
      (ha11 "#3D1717")
      (ha12 "#34274B")

      (cs00 "#B2280E")
      (cs01 "#F2D5C3")
      (cs02 "#E9A039")
      (fg   "#FDFFF3")

      (ot00 "#776677")
      (ot01 "#3E6911")
      (ot02 "#8EBE58")
      (ot03 "#500D0E")
      (ot04 "#21A167")
      (ot05 "#1979EA")
      (ot06 "#101010")
      (ot07 "#386C7A")
      (ot08 "#103185")
      (ot09 "#9F143B")
      (ot10 "#713764")
      (ot11 "#201F0E")
      (ot12 "#D0CA62")
      (ot13 "#313020")
      (ot14 "#020202")
      (ot15 "#161F14")
      (ot16 "#5F1416")
      (ot17 "#2E2C0A")
      (ot18 "#96A880")
      (ot19 "#F61E2F"))
;;;;; definitions
;;;;;; base
  (custom-theme-set-faces
   'sculpture-themes-dark
   `(bold                       ((,class (:weight bold))))
   `(bold-italic                ((,class (:weight bold :slant italic))))
   `(fixed-pitch                ((,class (:height 1.0))))
   `(fixed-pitch-serif          ((,class (:height 1.0))))
   `(italic                     ((,class (:slant italic))))
   `(underline                  ((,class (:underline t))))
   `(variable-pitch             ((,class (:height 1.0))))
   `(sculpture-themes-dark-variable-pitch-italic      ((,class (:inherit variable-pitch :slant italic))))
   `(fringe                     ((,class (:background ,bg))))
   `(vertical-border            ((,class (:foreground ,bw03))))
   `(window-divider             ((,class (:foreground ,bw01))))
   `(window-divider-first-pixel ((,class (:foreground ,bw02))))
   `(window-divider-last-pixel  ((,class (:foreground ,bw02))))
   `(hl-line                    ((,class (:background ,ot06))))
   `(button                     ((,class (:foreground ,fg :background ,ot06 :box (:line-width -1 :color ,bw06)))))

   `(default              ((,class (:foreground ,fg :background ,bg))))
   `(error                ((,class (:foreground ,cs00))))
   `(highlight            ((,class (:background ,cs02))))
   `(match                ((,class (:foreground ,ot01))))
   `(menu                 ((,class (:foreground ,fg :background ,bg))))
   `(minibuffer-prompt    ((,class (:foreground ,fg :slant italic))))
   `(read-multiple-choice ((,class (:foreground ,fg :slant italic))))
   `(region               ((,class (:background ,bw02))))
   `(secondary-selection  ((,class (:background ,ot13))))
   `(shadow               ((,class (:foreground ,bw11))))
   `(success              ((,class (:foreground ,ot02))))
   `(warning              ((,class (:foreground ,ot03))))
   `(cursor               ((,class (:background ,cs02))))
   `(whitespace-tab       ((,class (:foreground ,ot00 :background ,ot06))))
   `(escape-glyph         ((,class (:foreground ,ot07))))

   `(highlight-numbers-number ((,class (:foreground ,ot18))))
   `(highlight-quoted-symbol  ((,class (:foreground ,ot12))))
   `(highlight-quoted-quote   ((,class (:foreground ,ot01))))

;;;;;; popup
   `(popup-face               ((,class (:inherit (button) :foreground ,ot05))))
   `(popup-menu-face          ((,class (:inherit (popup-face)))))
   `(popup-tip-face           ((,class (:inherit (popup-face variable-pitch)))))

;;;;;; font-lock
   `(font-lock-builtin-face              ((,class (:foreground ,ot05 :inherit (bold)))))
   `(font-lock-comment-face              ((,class (:foreground ,bw10 :background ,ha09 :slant italic))))
   `(font-lock-comment-delimiter-face    ((,class (:foreground ,bw10 :background ,ha09 :slant italic))))
   `(font-lock-constant-face             ((,class (:foreground ,ha04))))
   `(font-lock-function-name-face        ((,class (:foreground ,ot09))))
   `(font-lock-keyword-face              ((,class (:foreground ,ot04 :inherit (bold)))))
   `(font-lock-string-face               ((,class (:foreground ,ha00))))
   `(font-lock-type-face                 ((,class (:foreground ,ha07))))
   `(font-lock-variable-name-face        ((,class (:foreground ,cs01))))
   `(font-lock-doc-face                  ((,class (:foreground ,ot19))))
   `(font-lock-warning-face              ((,class (:foreground ,cs00))))
   `(font-lock-preprocessor-face         ((,class (:background ,ha01))))
   `(font-lock-negation-char-face        ((,class (:foreground ,ha04))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,cs01))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,cs01))))

;;;;;; Header line and mode line
   `(mode-line                  ((,class (:foreground ,cs01 :background ,bw00 :box (:line-width 1 :color ,bw04)))))
   `(mode-line-buffer-id        ((,class (:foreground ,ot05 :background ,bw00))))
   `(mode-line-emphasis         ((,class (:foreground ,ha05 :background ,bw00))))
   `(mode-line-highlight        ((,class (:foreground ,ha05 :background ,bw00))))
   `(mode-line-inactive         ((,class (:foreground ,bw08 :background ,bw00 :box (:line-width 1 :color ,bw00)))))
   `(header-line                ((,class (:inherit mode-line))))
   `(header-line-highlight      ((,class (:inherit mode-line-highlight))))

;;;;;;; custom
   `(sculpture-themes-dark-modeline-line                     ((,class (:inherit (cursor variable-pitch) :foreground ,bg))))
   `(sculpture-themes-dark-modeline-percent                  ((,class (:inherit (cursor variable-pitch) :foreground ,fg :background ,ot03))))
   `(sculpture-themes-dark-modeline-mode                     ((,class (:inherit variable-pitch :foreground ,ot05 :weight bold))))
   `(sculpture-themes-dark-modeline-workspace                ((,class (:inherit variable-pitch :foreground ,cs02))))
   `(doom-modeline-highlight           ((,class (:inherit (bold variable-pitch) :foreground ,ot04))))
   `(doom-modeline-alternate-highlight ((,class (:inherit variable-pitch :foreground ,cs02))))

;;;;;; Info mode
   `(Info-quoted       ((,class (:foreground ,ha02 :background ,bg))))
   `(info-header-node  ((,class (:foreground ,fg   :background ,bg :inherit (bold)))))
   `(info-header-xref  ((,class (:foreground ,fg   :background ,bg :underline t))))
   `(info-node         ((,class (:foreground ,cs02 :background ,bg))))
   `(info-index-match  ((,class (:foreground ,fg   :background ,ha10))))
   `(info-menu-header  ((,class (:foreground ,fg   :background ,ha00 :weight bold))))
   `(info-menu-star    ((,class (:foreground ,fg   :background ,ha04))))
   `(info-title-1      ((,class (:foreground ,ha00 :background ,bg :inherit (bold)))))
   `(info-title-2      ((,class (:foreground ,ha04 :background ,bg :inherit (bold)))))
   `(info-title-3      ((,class (:foreground ,ha07 :background ,bg :inherit (bold)))))
   `(info-title-4      ((,class (:foreground ,ha11 :background ,bg :inherit (bold)))))
   `(info-xref         ((,class (:foreground ,ha01 :background ,bg :underline t))))
   `(info-xref-visited ((,class (:foreground ,ha12 :background ,bg :underline t))))

;;;;;; Info mode
   `(helpful-heading ((,class (:inherit variable-pitch :foreground ,ha02 :height 1.1 :underline t))))

;;;;;; evil
   `(evil-ex-info                   ((,class (:foreground ,bw13 :slant italic))))
   `(evil-ex-search                 ((,class (:foreground ,cs00 :background ,ha02 :inherit (bold)))))
   `(evil-ex-substitute-matches     ((,class (:foreground ,cs00 :strike-through t :inherit (bold)))))
   `(evil-ex-substitute-replacement ((,class (:foreground ,ot04 :inherit (bold)))))

;;;;;; diredfl
   `(diredfl-dir-name               ((,class (:foreground ,fg :inherit (bold variable-pitch)))))
   `(diredfl-number                 ((,class (:foreground ,bw06))))
   `(diredfl-symlink                ((,class (:foreground ,ot05))))
   `(diredfl-no-priv                ((,class (:foreground ,bw04))))
   `(diredfl-dir-priv               ((,class (:foreground ,ha02))))
   `(diredfl-read-priv              ((,class (:foreground ,ha01))))
   `(diredfl-rare-priv              ((,class (:foreground ,ha01))))
   `(diredfl-link-priv              ((,class (:foreground ,ha01))))
   `(diredfl-file-name              ((,class (:foreground ,fg :inherit variable-pitch))))
   `(diredfl-exec-priv              ((,class (:foreground ,ha11))))
   `(diredfl-date-time              ((,class (:foreground ,bw08 :underline t))))
   `(diredfl-write-priv             ((,class (:foreground ,ha01))))
   `(diredfl-other-priv             ((,class (:foreground ,ha01))))
   `(diredfl-file-suffix            ((,class (:foreground ,bw09 :inherit variable-pitch))))
   `(diredfl-dir-heading            ((,class (:foreground ,ha02 :box t))))
   `(diredfl-autofile-name          ((,class (:foreground ,bw09))))
   `(diredfl-flag-mark              ((,class (:foreground ,ha02))))
   `(diredfl-flag-mark-line         ((,class (:slant italic :underline ,ha02))))
   `(diredfl-executable-tag         ((,class (:foreground ,bw09))))
   `(diredfl-ignored-file-name      ((,class (:foreground ,bw09))))
   `(diredfl-deletion               ((,class (:foreground ,cs00))))
   `(diredfl-deletion-file-name     ((,class (:slant italic :strike-through ,cs00))))
   `(diredfl-tagged-autofile-name   ((,class (:foreground ,bw09))))
   `(diredfl-compressed-file-name   ((,class (:foreground ,bw09))))
   `(diredfl-compressed-file-suffix ((,class (:foreground ,bw09))))

;;;;;; dired-subtree
   `(dired-subtree-depth-1-face ((,class (:background ,ha09))))
   `(dired-subtree-depth-2-face ((,class (:background ,ot06))))
   `(dired-subtree-depth-3-face ((,class (:background ,bw02))))
   `(dired-subtree-depth-4-face ((,class (:background ,bg))))
   `(dired-subtree-depth-5-face ((,class (:background ,bg))))
   `(dired-subtree-depth-6-face ((,class (:background ,bg))))

;;;;;; Ivy
   `(ivy-action                      ((,class (:foreground ,fg :slant italic))))
   `(ivy-completion-annotations      ((,class (:foreground ,bw06))))
   `(ivy-confirm-face                ((,class (:foreground ,ha12))))
   `(ivy-current-match               ((,class (:underline (:line-width -1 :color ,ot04) :inherit (bold)))))
   `(ivy-cursor                      ((,class (:foreground ,bg :background ,fg))))
   `(ivy-grep-info                   ((,class (:foreground ,fg))))
   `(ivy-grep-line-number            ((,class (:foreground ,fg))))
   `(ivy-highlight-face              ((,class (:foreground ,ot07 :slant italic))))
   `(ivy-match-required-face         ((,class (:foreground ,ha00))))
   `(ivy-minibuffer-match-face-1     ((,class (:foreground ,ot08 :underline t))))
   `(ivy-minibuffer-match-face-2     ((,class (:foreground ,ot00 :underline t))))
   `(ivy-minibuffer-match-face-3     ((,class (:foreground ,ha04 :underline t))))
   `(ivy-minibuffer-match-face-4     ((,class (:foreground ,ha00 :underline t))))
   `(ivy-minibuffer-match-highlight  ((,class (:foreground ,ot07 :box t))))
   `(ivy-modified-buffer             ((,class (:foreground ,fg :inherit (bold)))))
   `(ivy-modified-outside-buffer     ((,class (:foreground ,fg :inherit (bold)))))
   `(ivy-org                         ((,class (:foreground ,fg))))
   `(ivy-prompt-match                ((,class (:inherit ivy-current-match))))
   `(ivy-remote                      ((,class (:foreground ,ha07))))
   `(ivy-separator                   ((,class (:foreground ,bw06))))
   `(ivy-subdir                      ((,class (:foreground ,fg))))
   `(ivy-virtual                     ((,class (:foreground ,bw06 :slant italic))))
   `(ivy-yanked-word                 ((,class (:foreground ,ot07))))

;;;;;; Swiper
   `(swiper-background-match-face-1  ((,class (:inherit sculpture-themes-dark-head-outline-2))))
   `(swiper-background-match-face-2  ((,class (:inherit sculpture-themes-dark-head-outline-4))))
   `(swiper-background-match-face-3  ((,class (:inherit sculpture-themes-dark-head-outline-5))))
   `(swiper-background-match-face-4  ((,class (:inherit sculpture-themes-dark-head-outline-3))))
   `(swiper-line-face                ((,class (:underline ,ha04 :extend t))))
   `(swiper-match-face-1             ((,class (:inherit (sculpture-themes-dark-head-outline-2 bold)))))
   `(swiper-match-face-2             ((,class (:inherit (sculpture-themes-dark-head-outline-4 bold)))))
   `(swiper-match-face-3             ((,class (:inherit (sculpture-themes-dark-head-outline-5 bold)))))
   `(swiper-match-face-4             ((,class (:inherit (sculpture-themes-dark-head-outline-3 bold)))))

;;;;;; rainbow-delimiter
   `(rainbow-delimiters-base-face       ((,class (:foreground ,cs01))))
   `(rainbow-delimiters-depth-1-face    ((,class (:foreground ,cs02))))
   `(rainbow-delimiters-depth-2-face    ((,class (:foreground ,ha00))))
   `(rainbow-delimiters-depth-3-face    ((,class (:foreground ,ot05))))
   `(rainbow-delimiters-depth-4-face    ((,class (:foreground ,ha04))))
   `(rainbow-delimiters-depth-5-face    ((,class (:foreground ,ot04))))
   `(rainbow-delimiters-depth-6-face    ((,class (:foreground ,ot10))))
   `(rainbow-delimiters-depth-7-face    ((,class (:foreground ,ha06))))
   `(rainbow-delimiters-depth-8-face    ((,class (:foreground ,ot07))))
   `(rainbow-delimiters-depth-9-face    ((,class (:foreground ,ot00))))
   `(rainbow-delimiters-unmatched-face  ((,class (:foreground ,cs00))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,cs00))))
   `(rainbow-delimiters-base-error-face ((,class (:foreground ,cs00))))

;;;;;; Line Numbers
   `(line-number              ((,class (:foreground ,bw03 :background ,ha09))))
   `(line-number-current-line ((,class (:foreground ,bw03 :background ,bg :box (:line-width -1)))))

;;;;;; isearch, occur
   `(isearch        ((,class (:foreground ,fg   :background ,ot02))))
   `(isearch-fail   ((,class (:foreground ,fg   :background ,ot03))))
   `(lazy-highlight ((,class (:foreground ,bw14 :background ,ot05))))
   `(match          ((,class (:foreground ,fg   :background ,cs02))))
   `(query-replace  ((,class (:foreground ,fg   :background ,ot08))))

;;;;;; workspace, doom
   `(+workspace-tab-face          ((,class (:inherit variable-pitch :foreground ,fg))))
   `(+workspace-tab-selected-face ((,class (:inherit variable-pitch :foreground ,ha04 :background ,ot05))))

;;;;;; +org-todo, custom
   `(+org-todo-cancel  ((,class (:inherit fixed-pitch :underline (:color ,cs00 :line-width -1)))))
   `(+org-todo-done    ((,class (:inherit fixed-pitch :underline (:color ,ot01 :line-width -1)))))
   `(+org-todo-onhold  ((,class (:inherit fixed-pitch :underline (:color ,ha04 :line-width -1)))))
   `(+org-todo-active  ((,class (:inherit fixed-pitch :underline (:color ,ha01 :line-width -1)))))
   `(+org-todo-project ((,class (:inherit fixed-pitch :underline (:color ,ot00 :line-width -1)))))

;;;;;; ido
   `(ido-subdir            ((,class (:foreground ,bw13))))
   `(ido-virtual           ((,class (:foreground ,ha04))))
   `(ido-indicator         ((,class (:foreground ,cs02))))
   `(ido-only-match        ((,class (:foreground ,ot04))))
   `(ido-first-match       ((,class (:foreground ,ot05))))
   `(ido-incomplete-regexp ((,class (:foreground ,ha06))))

;;;;;; imenu-list
   `(imenu-list-entry-face            ((,class (:inherit variable-pitch :foreground ,fg))))
   `(imenu-list-entry-face-3          ((,class (:inherit variable-pitch :foreground ,ha01))))
   `(imenu-list-entry-face-2          ((,class (:inherit variable-pitch :foreground ,ha04))))
   `(imenu-list-entry-face-1          ((,class (:inherit variable-pitch :foreground ,ot12))))
   `(imenu-list-entry-face-0          ((,class (:inherit variable-pitch :foreground ,ot04))))
   `(imenu-list-entry-subalist-face-3 ((,class (:inherit variable-pitch :foreground ,ha01 :underline t))))
   `(imenu-list-entry-subalist-face-2 ((,class (:inherit variable-pitch :foreground ,ha04 :underline t))))
   `(imenu-list-entry-subalist-face-1 ((,class (:inherit variable-pitch :foreground ,ot12 :underline t))))
   `(imenu-list-entry-subalist-face-0 ((,class (:inherit variable-pitch :foreground ,ot04 :underline t))))

;;;;;; Sculpture-Themes-Dark-Head-Outline
   `(sculpture-themes-dark-head-outline-1 ((,class (:foreground ,ha04))))
   `(sculpture-themes-dark-head-outline-2 ((,class (:foreground ,ot05))))
   `(sculpture-themes-dark-head-outline-3 ((,class (:foreground ,ot04))))
   `(sculpture-themes-dark-head-outline-4 ((,class (:foreground ,cs02))))
   `(sculpture-themes-dark-head-outline-5 ((,class (:foreground ,ha00))))
   `(sculpture-themes-dark-head-outline-6 ((,class (:foreground ,ot10))))
   `(sculpture-themes-dark-head-outline-7 ((,class (:foreground ,ha06))))
   `(sculpture-themes-dark-head-outline-8 ((,class (:foreground ,ot07))))

;;;;;; Outline
   `(outline-1 ((,class (:inherit (sculpture-themes-dark-head-outline-1 variable-pitch) :overline t))))
   `(outline-2 ((,class (:inherit (sculpture-themes-dark-head-outline-2 variable-pitch) :overline t))))
   `(outline-3 ((,class (:inherit (sculpture-themes-dark-head-outline-3 variable-pitch) :overline t))))
   `(outline-4 ((,class (:inherit (sculpture-themes-dark-head-outline-4 variable-pitch) :overline t))))
   `(outline-5 ((,class (:inherit (sculpture-themes-dark-head-outline-5 variable-pitch) :overline t))))
   `(outline-6 ((,class (:inherit (sculpture-themes-dark-head-outline-6 variable-pitch) :overline t))))
   `(outline-7 ((,class (:inherit (sculpture-themes-dark-head-outline-7 variable-pitch) :overline t))))
   `(outline-8 ((,class (:inherit (sculpture-themes-dark-head-outline-8 variable-pitch) :overline t))))
   `(outline-minor-0 ((,class (:background ,bg))))
   `(outline-minor-1 ((,class (:inherit outline-1 :extend t))))
   `(outline-minor-2 ((,class (:inherit outline-2 :extend t))))
   `(outline-minor-3 ((,class (:inherit outline-3 :extend t))))
   `(outline-minor-4 ((,class (:inherit outline-4 :extend t))))
   `(outline-minor-5 ((,class (:inherit outline-5 :extend t))))
   `(outline-minor-6 ((,class (:inherit outline-6 :extend t))))
   `(outline-minor-7 ((,class (:inherit outline-7 :extend t))))
   `(outline-minor-8 ((,class (:inherit outline-8 :extend t))))

;;;;;; markdown
   `(markdown-header-face-1 ((,class (:inherit sculpture-themes-dark-head-outline-1))))
   `(markdown-header-face-2 ((,class (:inherit sculpture-themes-dark-head-outline-2))))
   `(markdown-header-face-3 ((,class (:inherit sculpture-themes-dark-head-outline-3))))
   `(markdown-header-face-4 ((,class (:inherit sculpture-themes-dark-head-outline-4))))
   `(markdown-header-face-5 ((,class (:inherit sculpture-themes-dark-head-outline-5))))
   `(markdown-header-face-6 ((,class (:inherit sculpture-themes-dark-head-outline-6))))
   `(markdown-link-face ((,class (:inherit org-link))))

;;;;;; org
   `(org-archived                  ((,class (:foreground ,ha00))))
   `(org-clock-overlay             ((,class (:foreground ,ha00))))
   `(org-code                      ((,class (:foreground ,ot09))))
   `(org-column                    ((,class (:foreground ,ha00))))
   `(org-column-title              ((,class (:foreground ,ha00))))
   `(org-date                      ((,class (:foreground ,bw12 :background ,ot11))))
   `(org-date-selected             ((,class (:foreground ,cs02))))
   `(org-default                   ((,class (:foreground ,fg))))
   `(org-dispatcher-highlight      ((,class (:foreground ,ha00))))
   `(org-document-info             ((,class (:foreground ,fg :background ,ha01 :height 1.2))))
   `(org-document-info-keyword     ((,class (:foreground ,fg :background ,ha01 :height 1.2))))
   `(org-document-title            ((,class (:foreground ,fg :background ,ha01 :height 1.9))))
   `(org-done                      ((,class (:underline (:color ,ot02 :line-width -1)))))
   `(org-drawer                    ((,class (:foreground ,ha00))))
   `(org-ellipsis                  ((,class (:foreground ,ha00))))
   `(org-footnote                  ((,class (:foreground ,ha00))))
   `(org-formula                   ((,class (:foreground ,ha00))))
   `(org-headline-done             nil)
   `(org-headline-todo             nil)
   `(org-hide                      ((,class (:foreground ,bg))))
   `(org-indent                    ((,class (:foreground ,bg))))
   `(org-latex-and-related         ((,class (:foreground ,ha00))))
   `(org-link                      ((,class (:foreground ,ot07 :underline t))))
   `(org-list-dt                   ((,class (:foreground ,ot05))))
   `(org-macro                     ((,class (:foreground ,ha00))))
   `(org-meta-line                 ((,class (:foreground ,fg :background ,ha11))))
   `(org-mode-line-clock           ((,class (:foreground ,ha00))))
   `(org-mode-line-clock-overrun   ((,class (:foreground ,ha00))))
   `(org-priority                  ((,class (:foreground ,ha00))))
   `(org-property-value            ((,class (:foreground ,ha00))))
   `(org-scheduled                 ((,class (:foreground ,ha00))))
   `(org-scheduled-previously      ((,class (:foreground ,ha00))))
   `(org-scheduled-today           ((,class (:foreground ,ha00))))
   `(org-sexp-date                 ((,class (:foreground ,ha00))))
   `(org-special-keyword           ((,class (:foreground ,cs02 :background ,ha10))))
   `(org-table                     ((,class (:foreground ,cs01))))
   `(org-table-header              ((,class (:foreground ,fg :inherit (bold)))))
   `(org-tag                       ((,class (:foreground ,cs01))))
   `(org-tag-group                 ((,class (:foreground ,cs01))))
   `(org-target                    ((,class (:foreground ,ha00))))
   `(org-time-grid                 ((,class (:foreground ,ha00))))
   `(org-todo                      ((,class (:inherit fixed-pitch :underline (:color ,ot09 :line-width -1)))))
   `(org-upcoming-deadline         ((,class (:foreground ,ha00))))
   `(org-upcoming-distant-deadline ((,class (:foreground ,ha00))))
   `(org-verbatim                  ((,class (:foreground ,cs02 :background ,ot06))))
   `(org-verse                     ((,class (:foreground ,ha00))))
   `(org-warning                   ((,class (:foreground ,ha00))))

;;;;;;; agenda
   `(org-agenda-calendar-event   ((,class (:foreground ,ha04))))
   `(org-agenda-calendar-sexp    ((,class (:foreground ,ha04))))
   `(org-agenda-clocking         ((,class (:foreground ,ha04))))
   `(org-agenda-column-dateline  ((,class (:foreground ,ha04))))
   `(org-agenda-current-time     ((,class (:foreground ,ot04))))
   `(org-agenda-date             ((,class (:foreground ,ot04))))
   `(org-agenda-date-today       ((,class (:foreground ,fg :background ,ot01))))
   `(org-agenda-date-weekend     ((,class (:foreground ,ot05))))
   `(org-agenda-diary            ((,class (:foreground ,ot05))))
   ;; `(org-agenda-dimmed-todo-face ((,class (:foreground ,ha04 :underline (:color ,ha01 :line-width -1)))))
   `(org-agenda-dimmed-todo-face ((,class (:background ,ot06))))
   `(org-agenda-done             ((,class (:foreground ,ot02))))
   `(org-agenda-filter-category  ((,class (:foreground ,ha06))))
   `(org-agenda-filter-effort    ((,class (:foreground ,ha06))))
   `(org-agenda-filter-regexp    ((,class (:foreground ,ha06))))
   `(org-agenda-filter-tags      ((,class (:foreground ,ha06))))
   `(org-agenda-restriction-lock ((,class (:foreground ,ha07))))
   `(org-agenda-structure        ((,class (:inherit variable-pitch :foreground ,ot04 :height 1.2))))
   `(org-time-grid               ((,class (:foreground ,cs01))))

;;;;;;; block
   `(org-block            ((,class (:foreground ,fg   :background ,ha09 :extend t))))
   `(org-block-begin-line ((,class (:foreground ,bw10 :background ,ot06 :weight normal :extend t :height 0.8 :inherit variable-pitch))))
   `(org-block-end-line   ((,class (:foreground ,bw10 :background ,ot06 :weight normal :extend t :height 0.8 :inherit variable-pitch))))
   `(org-quote            ((,class (:foreground ,fg   :background ,ha08 :extend t))))

;;;;;;; checkbox
   `(org-checkbox                 ((,class (:foreground ,ot05))))
   `(org-checkbox-statistics-done ((,class (:foreground ,ot04))))
   `(org-checkbox-statistics-todo ((,class (:foreground ,cs02))))

;;;;;;; level
   `(org-level-1 ((,class (:inherit sculpture-themes-dark-head-outline-1))))
   `(org-level-2 ((,class (:inherit sculpture-themes-dark-head-outline-2))))
   `(org-level-3 ((,class (:inherit sculpture-themes-dark-head-outline-3))))
   `(org-level-4 ((,class (:inherit sculpture-themes-dark-head-outline-4))))
   `(org-level-5 ((,class (:inherit sculpture-themes-dark-head-outline-5))))
   `(org-level-6 ((,class (:inherit sculpture-themes-dark-head-outline-6))))
   `(org-level-7 ((,class (:inherit sculpture-themes-dark-head-outline-7))))
   `(org-level-8 ((,class (:inherit sculpture-themes-dark-head-outline-8))))

;;;;;; paren
   `(show-paren-match            ((,class (:underline (:color ,ha02 :line-width -1)))))
   `(show-paren-mismatch         ((,class (:underline (:color ,ha11 :line-width -1)))))
   `(show-paren-match-expression ((,class (:underline (:color ,ot06 :line-width -1)))))

;;;;;; shr
   `(shr-link ((,class (:inherit org-link))))
   `(shr-selected-link ((,class (:inherit org-link :background ,ot08))))

;;;;;; git-gutter
   `(git-gutter:added       ((,class (:background ,ot04))))
   `(git-gutter:deleted     ((,class (:background ,cs00))))
   `(git-gutter:modified    ((,class (:background ,ha04))))
   `(git-gutter:unchanged   ((,class (:background ,ha02))))
   `(git-gutter:separator   ((,class (:background ,bw01))))
   `(git-gutter-fr:added    ((,class (:background ,ot04))))
   `(git-gutter-fr:deleted  ((,class (:background ,cs00))))
   `(git-gutter-fr:modified ((,class (:background ,ha04))))

;;;;;; company
   `(company-tooltip-selection  ((,class (:foreground ,fg :underline (:color ,bw07) :inherit (semibold)))))
   `(company-tooltip-common     ((,class (:foreground ,fg))))
   `(company-tooltip-annotation ((,class (:foreground ,ha02))))
   `(company-tooltip            ((,class (:foreground ,fg :background ,ha09 :box (:color ,bw01)))))
   `(company-scrollbar-bg       ((,class (:background ,bg))))
   `(company-scrollbar-fg       ((,class (:background ,bw02))))

;;;;;; message
   `(message-header-name    ((,class (:foreground ,ot00 :inherit variable-pitch))))
   `(message-header-cc      ((,class (:foreground ,ot02 :inherit variable-pitch))))
   `(message-header-to      ((,class (:foreground ,ot04 :inherit variable-pitch))))
   `(message-header-subject ((,class (:foreground ,ot05 :inherit variable-pitch))))

;;;;;; elfeed
   `(elfeed-show-tag-face            ((,class (:foreground ,ha02))))
   `(elfeed-show-misc-face           ((,class (:foreground ,fg))))
   `(elfeed-show-feed-face           ((,class (:foreground ,fg))))
   `(elfeed-show-title-face          ((,class (:foreground ,fg :inherit variable-pitch))))
   `(elfeed-show-author-face         ((,class (:foreground ,ha01))))
   `(elfeed-log-date-face            ((,class (:foreground ,bw08))))
   `(elfeed-search-tag-face          ((,class (:inherit elfeed-show-tag-face))))
   `(elfeed-search-feed-face         ((,class (:inherit elfeed-show-feed-face))))
   `(elfeed-search-date-face         ((,class (:inherit elfeed-log-date-face))))
   `(elfeed-search-title-face        ((,class (:inherit elfeed-show-title-face))))
   `(elfeed-search-filter-face       ((,class (:foreground ,ha04 :inherit variable-pitch :height 1.3))))
   `(elfeed-log-info-level-face      ((,class (:foreground ,ot08))))
   `(elfeed-log-warn-level-face      ((,class (:foreground ,ot03))))
   `(elfeed-log-debug-level-face     ((,class (:foreground ,ot05))))
   `(elfeed-log-error-level-face     ((,class (:foreground ,ot09))))
   `(elfeed-search-last-update-face  ((,class (:foreground ,fg :background ,ha06 :inherit variable-pitch))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,fg :background ,ot09 :inherit variable-pitch))))
   `(elfeed-search-unread-title-face ((,class (:inherit (semibold)))))

   `(sculpture-themes-dark-elfeed-title-1   ((,class (:inherit sculpture-themes-dark-head-outline-1))))
   `(sculpture-themes-dark-elfeed-title-2   ((,class (:inherit sculpture-themes-dark-head-outline-2))))
   `(sculpture-themes-dark-elfeed-title-3   ((,class (:inherit sculpture-themes-dark-head-outline-3))))
   `(sculpture-themes-dark-elfeed-title-4   ((,class (:inherit sculpture-themes-dark-head-outline-4))))
   `(sculpture-themes-dark-elfeed-title-5   ((,class (:inherit sculpture-themes-dark-head-outline-5))))
   `(sculpture-themes-dark-elfeed-title-6   ((,class (:inherit sculpture-themes-dark-head-outline-6))))
   `(sculpture-themes-dark-elfeed-title-7   ((,class (:inherit sculpture-themes-dark-head-outline-7))))
   `(sculpture-themes-dark-elfeed-title-8   ((,class (:inherit sculpture-themes-dark-head-outline-8))))
   `(sculpture-themes-dark-elfeed-star-face ((,class (:underline (:color ,ha04 :line-width -1)))))

;;;;;; transient
   `(transient-unreachable       ((,class (:foreground ,bw04))))
   `(transient-inactive-value    ((,class (:foreground ,bw04))))
   `(transient-unreachable-key   ((,class (:foreground ,bw04))))
   `(transient-inactive-argument ((,class (:foreground ,bw04))))
   `(transient-inapt-suffix      ((,class (:foreground ,bw04 :inherit italic))))
   `(transient-heading           ((,class (:foreground ,ot05 :inherit variable-pitch :height 1.2 :overline t :extend t))))
   `(transient-key               ((,class (:foreground ,ot09 :underline t))))
   `(transient-active-infix      ((,class (:inherit lazy-highlight :underline t))))

;;;;;; magit
   `(magit-section-heading        ((,class (:foreground ,ot01 :inherit variable-pitch :height 1.2))))
   `(magit-hash                   ((,class (:foreground ,cs01))))
   `(magit-branch-local           ((,class (:foreground ,cs01 :background ,ot05 :inherit variable-pitch))))
   `(magit-branch-remote          ((,class (:foreground ,bg :background ,ot12 :inherit variable-pitch))))
   `(magit-diff-file-heading      ((,class (:foreground ,fg :inherit (bold variable-pitch)))))
   `(magit-diff-removed-highlight ((,class (:foreground ,cs01 :background ,ot03))))
   `(magit-diff-added-highlight   ((,class (:foreground ,bg :background ,ot02))))
   `(magit-diff-removed           ((,class (:foreground ,cs01 :background ,cs00))))
   `(magit-diff-added             ((,class (:foreground ,bg :background ,ot01))))
   `(magit-log-author             ((,class (:foreground ,ot05))))
   `(magit-log-date               ((,class (:foreground ,cs01))))
   `(magit-log-graph              ((,class (:foreground ,ot00))))
   `(magit-tag                    ((,class (:foreground ,ha04 :underline t :inherit variable-pitch))))
   `(magit-popup-disabled-argument((,class (:foreground ,bw04))))
   `(magit-blame-margin           ((,class (:inherit head-outline-3 :background ,bw03))))
   `(magit-blame-heading          ((,class (:inherit head-outline-3 :background ,bw03))))
   `(magit-blame-highlight        ((,class (:inherit head-outline-3 :background ,bw03))))

;;;;;; orderless
   `(orderless-match-face-0 ((,class (:inherit (sculpture-themes-dark-head-outline-2 bold)))))
   `(orderless-match-face-1 ((,class (:inherit (sculpture-themes-dark-head-outline-4 bold)))))
   `(orderless-match-face-2 ((,class (:inherit (sculpture-themes-dark-head-outline-5 bold)))))
   `(orderless-match-face-3 ((,class (:inherit (sculpture-themes-dark-head-outline-3 bold)))))

;;;;;; ediff
   `(ediff-odd-diff-Ancestor ((,class (:background ,ot06))))
   `(ediff-odd-diff-C ((,class (:background ,ot06))))
   `(ediff-odd-diff-B ((,class (:background ,ot13))))
   `(ediff-odd-diff-A ((,class (:background ,ot06))))
   `(ediff-even-diff-Ancestor ((,class (:background ,ot06))))
   `(ediff-even-diff-C ((,class (:background ,ot13))))
   `(ediff-even-diff-B ((,class (:background ,ot06))))
   `(ediff-even-diff-A ((,class (:background ,ot06))))

;;;;;; vertico
   `(vertico-current     ((,class (:underline (:line-width -1 :color ,ot04) :inherit (bold)))))
   `(vertico-group-title ((,class (:inherit (sculpture-themes-dark-head-outline-7 variable-pitch)))))

;;;;;; olivetti
   `(olivetti-fringe ((,class (:background ,ot14))))

;;;;;; flycheck
   `(flycheck-info    ((,class (:underline (:line-width -1 :color ,ot15)))))
   `(flycheck-error   ((,class (:underline (:line-width -1 :color ,ot16)))))
   `(flycheck-warning ((,class (:underline (:line-width -1 :color ,ot17)))))

   `(flycheck-posframe-face            ((,class (:inherit popup-tip-face))))
   `(flycheck-posframe-info-face       ((,class (:inherit (popup-tip-face variable-pitch flycheck-info) :foreground ,ot15))))
   `(flycheck-posframe-error-face      ((,class (:inherit (popup-tip-face variable-pitch flycheck-error) :foreground ,ot16))))
   `(flycheck-posframe-border-face     ((,class (:inherit popup-tip-face))))
   `(flycheck-posframe-warning-face    ((,class (:inherit (popup-tip-face variable-pitch flycheck-warning) :foreground ,ot17))))
   `(flycheck-posframe-background-face ((,class (:inherit popup-tip-face))))

;;;;;; tree-sitter
   `(tree-sitter-hl-face:function.call ((,class (:inherit font-lock-function-name-face))))

;;;;;; tabs
   `(tab-line                   ((,class (:inherit mode-line))))
   `(tab-bar                    ((,class (:inherit mode-line))))
   `(tab-bar-tab                ((,class (:inherit mode-line))))
   `(tab-bar-tab-inactive       ((,class (:inherit mode-line))))

   `(centaur-tabs-default                    ((,class (:inherit variable-pitch :foreground ,bw12 :background ,bw00))))
   `(centaur-tabs-selected                   ((,class (:inherit (variable-pitch mode-line-buffer-id)))))
   `(centaur-tabs-unselected                 ((,class (:inherit (variable-pitch tab-bar-tab-inactive)))))
   `(centaur-tabs-close-selected             ((,class (:inherit (variable-pitch mode-line-percent)))))
   `(centaur-tabs-active-bar-face            ((,class (:inherit mode-line))))
   `(centaur-tabs-close-mouse-face           ((,class (:inherit mode-line))))
   `(centaur-tabs-close-unselected           ((,class (:inherit mode-line))))
   `(centaur-tabs-selected-modified          ((,class (:inherit mode-line))))
   `(centaur-tabs-unselected-modified        ((,class (:inherit mode-line))))
   `(centaur-tabs-modified-marker-selected   ((,class (:inherit mode-line))))
   `(centaur-tabs-modified-marker-unselected ((,class (:inherit mode-line))))

;;;;;; highlight-indent-guides
   `(highlight-indent-guides-odd-face             ((,class (:foreground ,bw02))))
   `(highlight-indent-guides-even-face            ((,class (:foreground ,bw02))))
   `(highlight-indent-guides-character-face       ((,class (:foreground ,bw03))))
   `(highlight-indent-guides-stack-odd-face       ((,class (:foreground ,bw04))))
   `(highlight-indent-guides-stack-even-face      ((,class (:foreground ,bw04))))
   `(highlight-indent-guides-stack-character-face ((,class (:foreground ,bw05))))
   `(highlight-indent-guides-top-odd-face         ((,class (:foreground ,bw08))))
   `(highlight-indent-guides-top-even-face        ((,class (:foreground ,bw08))))
   `(highlight-indent-guides-top-character-face   ((,class (:foreground ,bw09))))

;;;;;; highlight-indentation
   `(highlight-indentation-face                ((,class (:background ,bw02))))
   `(highlight-indentation-guides-odd-face     ((,class (:inherit highlight-indentation-face))))
   `(highlight-indentation-guides-even-face    ((,class (:inherit highlight-indentation-face))))
   `(highlight-indentation-current-column-face ((,class (:background ,bw03))))

;;;;;; writegood
   `(writegood-weasels-face       ((,class (:underline (:line-width -1 :color ,cs00)))))
   `(writegood-duplicates-face    ((,class (:underline (:line-width -1 :color ,ot09)))))
   `(writegood-passive-voice-face ((,class (:underline (:line-width -1 :color ,ot08)))))

;;;;;; eglot
   `(eglot-highlight-symbol-face  ((,class (:underline (:line-width -1 :color ,fg) :inherit (bold)))))

;;;;;; lsp-mode
   `(lsp-ui-peek-list ((,class :background ,bw01)))

   `(lsp-face-highlight-write   ((,class :background ,bw01)))
   `(lsp-face-highlight-textual ((,class :inherit (lsp-face-highlight-write))))
   `(lsp-face-highlight-read    ((,class :inherit (lsp-face-highlight-write) :underline (:line-width -1 :color ,cs00))))

   `(lsp-face-semhl-number   ((,class :inherit (font-lock-constant-face))))
   `(lsp-face-semhl-constant ((,class :inherit (font-lock-constant-face))))

   `(lsp-face-semhl-regexp ((,class :inherit (font-lock-string-face bold))))
   `(lsp-face-semhl-string ((,class :inherit (font-lock-string-face))))

   `(lsp-face-semhl-enum           ((,class :inherit (font-lock-keyword-face))))
   `(lsp-face-semhl-type           ((,class :inherit (font-lock-keyword-face underline))))
   `(lsp-face-semhl-class          ((,class :inherit (font-lock-keyword-face underline italic))))
   `(lsp-face-semhl-struct         ((,class :inherit (font-lock-keyword-face italic))))
   `(lsp-face-semhl-interface      ((,class :inherit (font-lock-keyword-face bold-italic))))
   `(lsp-face-semhl-namespace      ((,class :inherit (font-lock-keyword-face bold-italic underline))))
   `(lsp-face-semhl-type-parameter ((,class :inherit (font-lock-keyword-face bold underline))))

   `(lsp-face-semhl-event     ((,class :inherit (font-lock-variable-name-face underline))))
   `(lsp-face-semhl-member    ((,class :inherit (font-lock-variable-name-face bold-italic))))
   `(lsp-face-semhl-property  ((,class :inherit (font-lock-variable-name-face italic))))
   `(lsp-face-semhl-variable  ((,class :inherit (font-lock-variable-name-face bold))))
   `(lsp-face-semhl-parameter ((,class :inherit (font-lock-variable-name-face underline italic))))

   `(lsp-face-semhl-label   ((,class :inherit (font-lock-comment-face underline))))
   `(lsp-face-semhl-comment ((,class :inherit (font-lock-comment-face))))

   `(lsp-face-semhl-method     ((,class :inherit (font-lock-function-name-face italic))))
   `(lsp-face-semhl-function   ((,class :inherit (font-lock-function-name-face underline bold))))
   `(lsp-face-semhl-operator   ((,class :inherit (font-lock-function-name-face bold-italic))))
   `(lsp-face-semhl-definition ((,class :inherit (font-lock-function-name-face bold))))

   `(lsp-face-semhl-static  ((,class :inherit (font-lock-keyword-face underline))))
   `(lsp-face-semhl-keyword ((,class :inherit (font-lock-keyword-face bold))))

   `(lsp-face-semhl-default-library ((,class :inherit (font-lock-builtin-face) :underline (:line-width -1 :color ,ot05))))

   ;; `(lsp-face-semhl-macro ((,class :inherit )))
   ;; `(lsp-face-semhl-deprecated ((,class :inherit )))
   ;; `(lsp-face-rename ((,class :inherit )))

;;;;;; pulsar
   `(pulsar-generic ((:inherit highlight)))))

(provide-theme 'sculpture-themes-dark)

;;; sculpture-themes-dark-theme.el ends here
