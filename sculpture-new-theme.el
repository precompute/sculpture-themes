;;; sculpture-new-theme.el --- Dark theme with vivid colors -*- lexical-binding: t; -*-

;; Copyright (C) 2021 t-e-r-m

;; Author: t-e-r-m <newenewen@tutanota.com>
;; URL: https://github.com/t-e-r-m/sculpture-theme
;; Created: January 06, 2021
;; Modified: May 07, 2021
;; Version: 0.2.0
;; Package-Requires: ((emacs "26.1")(autothemer "0.2"))

;; Sculpture-theme : A dark theme for emacs with vivid colors, inspired by
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

;;;; Custom Faces
(defgroup sculpture-theme-new ()
  "Group for sculpture-theme."
  :group 'faces)

(defface sculpture-theme-head-outline-1        nil "nil")
(defface sculpture-theme-head-outline-2        nil "nil")
(defface sculpture-theme-head-outline-3        nil "nil")
(defface sculpture-theme-head-outline-4        nil "nil")
(defface sculpture-theme-head-outline-5        nil "nil")
(defface sculpture-theme-head-outline-6        nil "nil")
(defface sculpture-theme-head-outline-7        nil "nil")
(defface sculpture-theme-head-outline-8        nil "nil")
(defface sculpture-theme-modeline-percent      nil "nil")
(defface sculpture-theme-modeline-line         nil "nil")
(defface sculpture-theme-modeline-mode         nil "nil")
(defface sculpture-theme-modeline-workspace    nil "nil")
(defface sculpture-theme-variable-pitch-italic nil "nil")
(defface sculpture-theme-elfeed-title-1        nil "nil")
(defface sculpture-theme-elfeed-title-2        nil "nil")
(defface sculpture-theme-elfeed-title-3        nil "nil")
(defface sculpture-theme-elfeed-title-4        nil "nil")
(defface sculpture-theme-elfeed-title-5        nil "nil")
(defface sculpture-theme-elfeed-title-6        nil "nil")
(defface sculpture-theme-elfeed-title-7        nil "nil")
(defface sculpture-theme-elfeed-title-8        nil "nil")
(defface sculpture-theme-elfeed-star-face      nil "nil")

;;;; definition
(deftheme sculpture-new
  "This theme takes inspiration from the pigments found on now bare Greco-Roman statues.")

(let ((class '((class color) (min-colors 89)))
;;;;; palette

      (bg "#000000")
      (bww00 "#000000")
      (bww01 "#111111")
      (bww02 "#222222")
      (bww03 "#333333")
      (bww04 "#444444")
      (bww06 "#666666")
      (bww07 "#777777")
      (bww08 "#888888")
      (bww09 "#999999")
      (bww10 "#aaaaaa")
      (bww11 "#bbbbbb")
      (bww12 "#cccccc")
      (bww13 "#dddddd")
      (bww14 "#eeeeee")

      (haa00 "#713238")
      (haa01 "#003564")
      (haa02 "#5B542E")
      (haa04 "#C8BF19")
      (haa05 "#421212")
      (haa06 "#642105")
      (haa07 "#767650")
      (haa08 "#040407")
      (haa09 "#080808")
      (haa10 "#2B1B26")
      (haa11 "#3D1717")
      (haa12 "#34274B")

      (css00 "#B2280E")
      (css01 "#F2D5C3")
      (css02 "#E9A039")
      (fg   "#FDFFF3")

      (ott00 "#776677")
      (ott01 "#3E6911")
      (ott02 "#8EBE58")
      (ott03 "#500D0E")
      (ott04 "#21A167")
      (ott05 "#1979EA")
      (ott06 "#101010")
      (ott07 "#386C7A")
      (ott08 "#103185")
      (ott09 "#9F143B")
      (ott10 "#713764")
      (ott11 "#201F0E")
      (ott12 "#D0CA62")
      (ott13 "#313020"))
;;;;; definitions
;;;;;; base
  (custom-theme-set-faces
   'sculpture-new
   `(bold                       ((,class (:weight bold))))
   `(bold-italic                ((,class (:weight bold :slant italic))))
   `(fixed-pitch                ((,class (:height 1.0))))
   `(fixed-pitch-serif          ((,class (:height 1.0))))
   `(italic                     ((,class (:slant italic))))
   `(underline                  ((,class (:underline t))))
   `(variable-pitch             ((,class (:height 1.0))))
   `(sculpture-theme-variable-pitch-italic      ((,class (:inherit variable-pitch :slant italic))))
   `(fringe                     ((,class (:background ,bg))))
   `(vertical-border            ((,class (:foreground ,bww03))))
   `(window-divider             ((,class (:foreground ,bww01))))
   `(window-divider-first-pixel ((,class (:foreground ,bww02))))
   `(window-divider-last-pixel  ((,class (:foreground ,bww02))))
   `(hl-line                    ((,class (:background ,ott06))))
   `(button                     ((,class (:foreground ,fg :background ,ott06 :box (:line-width -1 :color)) ,bww06)))

   `(default              ((,class (:foreground ,fg :background ,bg))))
   `(error                ((,class (:foreground ,css00))))
   `(highlight            ((,class (:background ,css02))))
   `(match                ((,class (:foreground ,ott01))))
   `(menu                 ((,class (:foreground ,fg :background ,bg))))
   `(minibuffer-prompt    ((,class (:foreground ,fg :slant italic))))
   `(read-multiple-choice ((,class (:foreground ,fg :slant italic))))
   `(region               ((,class (:background ,bww02))))
   `(secondary-selection  ((,class (:background ,css01))))
   `(shadow               ((,class (:foreground ,bww11))))
   `(success              ((,class (:foreground ,ott02))))
   `(warning              ((,class (:foreground ,ott03))))
   `(cursor               ((,class (:background ,css02))))
   `(whitespace-tab       ((,class (:foreground ,ott00 :background ,ott06))))
   `(escape-glyph         ((,class (:foreground ,ott07))))

;;;;;; font-lock
   `(font-lock-builtin-face              ((,class (:foreground ,ott05 :weight bold))))
   `(font-lock-comment-face              ((,class (:foreground ,bww10 :background ,haa09 :slant italic))))
   `(font-lock-comment-delimiter-face    ((,class (:foreground ,bww10 :background ,haa09 :slant italic))))
   `(font-lock-constant-face             ((,class (:foreground ,haa04))))
   `(font-lock-function-name-face        ((,class (:foreground ,ott09))))
   `(font-lock-keyword-face              ((,class (:foreground ,ott04 :weight bold))))
   `(font-lock-string-face               ((,class (:foreground ,haa00))))
   `(font-lock-type-face                 ((,class (:foreground ,haa07))))
   `(font-lock-variable-name-face        ((,class (:foreground ,css01))))
   `(font-lock-doc-face                  ((,class (:foreground ,fg))))
   `(font-lock-warning-face              ((,class (:foreground ,css00))))
   `(font-lock-preprocessor-face         ((,class (:background ,haa01))))
   `(font-lock-negation-char-face        ((,class (:foreground ,haa04))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,css01))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,css01))))

;;;;;; Header line and mode line
   `(header-line                ((,class (:foreground ,fg   :background ,bww00))))
   `(header-line-highlight      ((,class (:foreground ,fg   :background ,bww00))))
   `(mode-line                  ((,class (:foreground ,css01 :background ,bww00 :box (:line-width 1 :color)) bww04)))
   `(mode-line-buffer-id        ((,class (:foreground ,ott05 :background ,bww00))))
   `(mode-line-emphasis         ((,class (:foreground ,haa05 :background ,bww00))))
   `(mode-line-highlight        ((,class (:foreground ,haa05 :background ,bww00))))
   `(mode-line-inactive         ((,class (:foreground ,bww08 :background ,bww00 :box (:line-width 1 :color)) bww00)))

;;;;;;; custom
   `(sculpture-theme-modeline-line                     ((,class (:inherit cursor :inherit variable-pitch :foreground ,bg))))
   `(sculpture-theme-modeline-percent                  ((,class (:inherit cursor :inherit variable-pitch :foreground ,fg :background ,ott03))))
   `(sculpture-theme-modeline-mode                     ((,class (:inherit variable-pitch :foreground ,ott05 :weight bold))))
   `(sculpture-theme-modeline-workspace                ((,class (:inherit variable-pitch :foreground ,css02))))
   `(doom-modeline-highlight           ((,class (:inherit variable-pitch :foreground ,ott04 :weight bold))))
   `(doom-modeline-alternate-highlight ((,class (:inherit variable-pitch :foreground ,css02))))

;;;;;; Info mode
   `(Info-quoted       ((,class (:foreground ,haa02 :background ,bg))))
   `(info-header-node  ((,class (:foreground ,fg   :background ,bg :weight bold))))
   `(info-header-xref  ((,class (:foreground ,fg   :background ,bg :underline t))))
   `(info-node         ((,class (:foreground ,css02 :background ,bg))))
   `(info-index-match  ((,class (:foreground ,fg   :background ,haa10))))
   `(info-menu-header  ((,class (:foreground ,fg   :background ,haa00 :weight bold))))
   `(info-menu-star    ((,class (:foreground ,fg   :background ,haa04))))
   `(info-title-1      ((,class (:foreground ,haa00 :background ,bg :weight bold))))
   `(info-title-2      ((,class (:foreground ,haa04 :background ,bg :weight bold))))
   `(info-title-3      ((,class (:foreground ,haa07 :background ,bg :weight bold))))
   `(info-title-4      ((,class (:foreground ,haa11 :background ,bg :weight bold))))
   `(info-xref         ((,class (:foreground ,haa01 :background ,bg :underline t))))
   `(info-xref-visited ((,class (:foreground ,haa12 :background ,bg :underline t))))

;;;;;; Info mode
   `(helpful-heading ((,class (:inherit variable-pitch :foreground ,haa02 :height 1.1 :underline t))))

;;;;;; evil
   `(evil-ex-info                   ((,class (:foreground ,bww13 :slant italic))))
   `(evil-ex-search                 ((,class (:foreground ,css00 :background ,haa02 :weight bold))))
   `(evil-ex-substitute-matches     ((,class (:foreground ,css00 :strike-through t :weight bold))))
   `(evil-ex-substitute-replacement ((,class (:foreground ,ott04 :weight bold))))

;;;;;; diredfl
   `(diredfl-dir-name               ((,class (:foreground ,fg :weight bold :inherit variable-pitch))))
   `(diredfl-number                 ((,class (:foreground ,bww06))))
   `(diredfl-symlink                ((,class (:foreground ,ott05))))
   `(diredfl-no-priv                ((,class (:foreground ,bww04))))
   `(diredfl-dir-priv               ((,class (:foreground ,haa02))))
   `(diredfl-read-priv              ((,class (:foreground ,haa01))))
   `(diredfl-rare-priv              ((,class (:foreground ,haa01))))
   `(diredfl-link-priv              ((,class (:foreground ,haa01))))
   `(diredfl-file-name              ((,class (:foreground ,fg :inherit variable-pitch))))
   `(diredfl-exec-priv              ((,class (:foreground ,haa11))))
   `(diredfl-date-time              ((,class (:foreground ,bww08 :underline t))))
   `(diredfl-write-priv             ((,class (:foreground ,haa01))))
   `(diredfl-other-priv             ((,class (:foreground ,haa01))))
   `(diredfl-file-suffix            ((,class (:foreground ,bww09 :inherit variable-pitch))))
   `(diredfl-dir-heading            ((,class (:foreground ,haa02 :box t))))
   `(diredfl-autofile-name          ((,class (:foreground ,bww09))))
   `(diredfl-flag-mark              ((,class (:foreground ,haa02))))
   `(diredfl-flag-mark-line         ((,class (:slant italic :underline ,haa02))))
   `(diredfl-executable-tag         ((,class (:foreground ,bww09))))
   `(diredfl-ignored-file-name      ((,class (:foreground ,bww09))))
   `(diredfl-deletion               ((,class (:foreground ,css00))))
   `(diredfl-deletion-file-name     ((,class (:slant italic :strike-through ,css00))))
   `(diredfl-tagged-autofile-name   ((,class (:foreground ,bww09))))
   `(diredfl-compressed-file-name   ((,class (:foreground ,bww09))))
   `(diredfl-compressed-file-suffix ((,class (:foreground ,bww09))))

;;;;;; dired-subtree
   `(dired-subtree-depth-1-face ((,class (:background ,bg))))
   `(dired-subtree-depth-2-face ((,class (:background ,bg))))
   `(dired-subtree-depth-3-face ((,class (:background ,bg))))
   `(dired-subtree-depth-4-face ((,class (:background ,bg))))
   `(dired-subtree-depth-5-face ((,class (:background ,bg))))
   `(dired-subtree-depth-6-face ((,class (:background ,bg))))

;;;;;; Ivy
   `(ivy-action                      ((,class (:foreground ,fg :slant italic))))
   `(ivy-completion-annotations      ((,class (:foreground ,bww06))))
   `(ivy-confirm-face                ((,class (:foreground ,haa12))))
   `(ivy-current-match               ((,class (:underline (:line-width -1 :color ,ott04) :weight bold))))
   `(ivy-cursor                      ((,class (:foreground ,bg :background ,fg))))
   `(ivy-grep-info                   ((,class (:foreground ,fg))))
   `(ivy-grep-line-number            ((,class (:foreground ,fg))))
   `(ivy-highlight-face              ((,class (:foreground ,ott07 :slant italic))))
   `(ivy-match-required-face         ((,class (:foreground ,haa00))))
   `(ivy-minibuffer-match-face-1     ((,class (:foreground ,ott08 :underline t))))
   `(ivy-minibuffer-match-face-2     ((,class (:foreground ,ott00 :underline t))))
   `(ivy-minibuffer-match-face-3     ((,class (:foreground ,haa04 :underline t))))
   `(ivy-minibuffer-match-face-4     ((,class (:foreground ,haa00 :underline t))))
   `(ivy-minibuffer-match-highlight  ((,class (:foreground ,ott07 :box t))))
   `(ivy-modified-buffer             ((,class (:foreground ,fg :weight bold))))
   `(ivy-modified-outside-buffer     ((,class (:foreground ,fg :weight bold))))
   `(ivy-org                         ((,class (:foreground ,fg))))
   `(ivy-prompt-match                ((,class (:inherit ivy-current-match))))
   `(ivy-remote                      ((,class (:foreground ,haa07))))
   `(ivy-separator                   ((,class (:foreground ,bww06))))
   `(ivy-subdir                      ((,class (:foreground ,fg))))
   `(ivy-virtual                     ((,class (:foreground ,bww06 :slant italic))))
   `(ivy-yanked-word                 ((,class (:foreground ,ott07))))

;;;;;; Swiper
   `(swiper-background-match-face-1  ((,class (:inherit sculpture-theme-head-outline-2))))
   `(swiper-background-match-face-2  ((,class (:inherit sculpture-theme-head-outline-4))))
   `(swiper-background-match-face-3  ((,class (:inherit sculpture-theme-head-outline-5))))
   `(swiper-background-match-face-4  ((,class (:inherit sculpture-theme-head-outline-3))))
   `(swiper-line-face                ((,class (:underline ,haa04 :extend t))))
   `(swiper-match-face-1             ((,class (:inherit sculpture-theme-head-outline-2 :weight bold))))
   `(swiper-match-face-2             ((,class (:inherit sculpture-theme-head-outline-4 :weight bold))))
   `(swiper-match-face-3             ((,class (:inherit sculpture-theme-head-outline-5 :weight bold))))
   `(swiper-match-face-4             ((,class (:inherit sculpture-theme-head-outline-3 :weight bold))))

;;;;;; rainbow-delimiter
   `(rainbow-delimiters-base-face       ((,class (:foreground ,css01))))
   `(rainbow-delimiters-depth-1-face    ((,class (:foreground ,css02))))
   `(rainbow-delimiters-depth-2-face    ((,class (:foreground ,haa00))))
   `(rainbow-delimiters-depth-3-face    ((,class (:foreground ,ott05))))
   `(rainbow-delimiters-depth-4-face    ((,class (:foreground ,haa04))))
   `(rainbow-delimiters-depth-5-face    ((,class (:foreground ,ott04))))
   `(rainbow-delimiters-depth-6-face    ((,class (:foreground ,ott10))))
   `(rainbow-delimiters-depth-7-face    ((,class (:foreground ,haa06))))
   `(rainbow-delimiters-depth-8-face    ((,class (:foreground ,ott07))))
   `(rainbow-delimiters-depth-9-face    ((,class (:foreground ,ott00))))
   `(rainbow-delimiters-unmatched-face  ((,class (:foreground ,css00))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,css00))))
   `(rainbow-delimiters-base-error-face ((,class (:foreground ,css00))))

;;;;;; Line Numbers
   `(line-number              ((,class (:foreground ,bww03 :background ,haa09))))
   `(line-number-current-line ((,class (:foreground ,bww03 :background ,bg :box (:line-width -1)))))

;;;;;; isearch, occur
   `(isearch        ((,class (:foreground ,fg   :background ,ott02))))
   `(isearch-fail   ((,class (:foreground ,fg   :background ,ott03))))
   `(lazy-highlight ((,class (:foreground ,bww14 :background ,ott05))))
   `(match          ((,class (:foreground ,fg   :background ,css02))))
   `(query-replace  ((,class (:foreground ,fg   :background ,ott08))))

;;;;;; workspace, doom
   `(+workspace-tab-face          ((,class (:foreground ,fg))))
   `(+workspace-tab-selected-face ((,class (:foreground ,haa04 :background ,ott05))))

;;;;;; +org-todo, custom
   `(+org-todo-cancel  ((,class (:inherit fixed-pitch :underline (:color ,css00 :line-width -1)))))
   `(+org-todo-done    ((,class (:inherit fixed-pitch :underline (:color ,ott01 :line-width -1)))))
   `(+org-todo-onhold  ((,class (:inherit fixed-pitch :underline (:color ,haa04 :line-width -1)))))
   `(+org-todo-active  ((,class (:inherit fixed-pitch :underline (:color ,haa01 :line-width -1)))))
   `(+org-todo-project ((,class (:inherit fixed-pitch :underline (:color ,ott00 :line-width -1)))))

;;;;;; ido
   `(ido-subdir            ((,class (:foreground ,bww13))))
   `(ido-virtual           ((,class (:foreground ,haa04))))
   `(ido-indicator         ((,class (:foreground ,css02))))
   `(ido-only-match        ((,class (:foreground ,ott04))))
   `(ido-first-match       ((,class (:foreground ,ott05))))
   `(ido-incomplete-regexp ((,class (:foreground ,haa06))))

;;;;;; imenu-list
   `(imenu-list-entry-face            ((,class (:foreground ,fg))))
   `(imenu-list-entry-face-3          ((,class (:foreground ,haa01))))
   `(imenu-list-entry-face-2          ((,class (:foreground ,haa04))))
   `(imenu-list-entry-face-1          ((,class (:foreground ,ott12))))
   `(imenu-list-entry-face-0          ((,class (:foreground ,ott04))))
   `(imenu-list-entry-subalist-face-3 ((,class (:foreground ,haa01 :underline t))))
   `(imenu-list-entry-subalist-face-2 ((,class (:foreground ,haa04 :underline t))))
   `(imenu-list-entry-subalist-face-1 ((,class (:foreground ,ott12 :underline t))))
   `(imenu-list-entry-subalist-face-0 ((,class (:foreground ,ott04 :underline t))))

;;;;;; Sculpture-Theme-Head-Outline
   `(sculpture-theme-head-outline-1 ((,class (:foreground ,haa04))))
   `(sculpture-theme-head-outline-2 ((,class (:foreground ,ott05))))
   `(sculpture-theme-head-outline-3 ((,class (:foreground ,ott04))))
   `(sculpture-theme-head-outline-4 ((,class (:foreground ,css02))))
   `(sculpture-theme-head-outline-5 ((,class (:foreground ,haa00))))
   `(sculpture-theme-head-outline-6 ((,class (:foreground ,ott10))))
   `(sculpture-theme-head-outline-7 ((,class (:foreground ,haa06))))
   `(sculpture-theme-head-outline-8 ((,class (:foreground ,ott07))))

;;;;;; Outline
   `(outline-1 ((,class (:inherit sculpture-theme-head-outline-1 :inherit variable-pitch :overline t))))
   `(outline-2 ((,class (:inherit sculpture-theme-head-outline-2 :inherit variable-pitch :overline t))))
   `(outline-3 ((,class (:inherit sculpture-theme-head-outline-3 :inherit variable-pitch :overline t))))
   `(outline-4 ((,class (:inherit sculpture-theme-head-outline-4 :inherit variable-pitch :overline t))))
   `(outline-5 ((,class (:inherit sculpture-theme-head-outline-5 :inherit variable-pitch :overline t))))
   `(outline-6 ((,class (:inherit sculpture-theme-head-outline-6 :inherit variable-pitch :overline t))))
   `(outline-7 ((,class (:inherit sculpture-theme-head-outline-7 :inherit variable-pitch :overline t))))
   `(outline-8 ((,class (:inherit sculpture-theme-head-outline-8 :inherit variable-pitch :overline t))))
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
   `(markdown-header-face-1 ((,class (:inherit sculpture-theme-head-outline-1))))
   `(markdown-header-face-2 ((,class (:inherit sculpture-theme-head-outline-2))))
   `(markdown-header-face-3 ((,class (:inherit sculpture-theme-head-outline-3))))
   `(markdown-header-face-4 ((,class (:inherit sculpture-theme-head-outline-4))))
   `(markdown-header-face-5 ((,class (:inherit sculpture-theme-head-outline-5))))
   `(markdown-header-face-6 ((,class (:inherit sculpture-theme-head-outline-6))))
   `(markdown-link-face ((,class (:inherit org-link))))

;;;;;; org
   `(org-archived                  ((,class (:foreground ,haa00))))
   `(org-clock-overlay             ((,class (:foreground ,haa00))))
   `(org-code                      ((,class (:foreground ,ott09))))
   `(org-column                    ((,class (:foreground ,haa00))))
   `(org-column-title              ((,class (:foreground ,haa00))))
   `(org-date                      ((,class (:foreground ,bww12 :background ,ott11))))
   `(org-date-selected             ((,class (:foreground ,css02))))
   `(org-default                   ((,class (:foreground ,fg))))
   `(org-dispatcher-highlight      ((,class (:foreground ,haa00))))
   `(org-document-info             ((,class (:foreground ,fg :background ,haa01 :height 1.2))))
   `(org-document-info-keyword     ((,class (:foreground ,fg :background ,haa01 :height 1.2))))
   `(org-document-title            ((,class (:foreground ,fg :background ,haa01 :height 1.9))))
   `(org-done                      ((,class (:underline (:color ,ott02 :line-width -1)))))
   `(org-drawer                    ((,class (:foreground ,haa00))))
   `(org-ellipsis                  ((,class (:foreground ,haa00))))
   `(org-footnote                  ((,class (:foreground ,haa00))))
   `(org-formula                   ((,class (:foreground ,haa00))))
   `(org-headline-done             nil)
   `(org-headline-todo             nil)
   `(org-hide                      ((,class (:foreground ,bg))))
   `(org-indent                    ((,class (:foreground ,bg))))
   `(org-latex-and-related         ((,class (:foreground ,haa00))))
   `(org-link                      ((,class (:foreground ,ott07 :underline t))))
   `(org-list-dt                   ((,class (:foreground ,ott05))))
   `(org-macro                     ((,class (:foreground ,haa00))))
   `(org-meta-line                 ((,class (:foreground ,fg :background ,haa11))))
   `(org-mode-line-clock           ((,class (:foreground ,haa00))))
   `(org-mode-line-clock-overrun   ((,class (:foreground ,haa00))))
   `(org-priority                  ((,class (:foreground ,haa00))))
   `(org-property-value            ((,class (:foreground ,haa00))))
   `(org-scheduled                 ((,class (:foreground ,haa00))))
   `(org-scheduled-previously      ((,class (:foreground ,haa00))))
   `(org-scheduled-today           ((,class (:foreground ,haa00))))
   `(org-sexp-date                 ((,class (:foreground ,haa00))))
   `(org-special-keyword           ((,class (:foreground ,css02 :background ,haa10))))
   `(org-table                     ((,class (:foreground ,css01))))
   `(org-table-header              ((,class (:foreground ,fg :weight bold))))
   `(org-tag                       ((,class (:foreground ,css01))))
   `(org-tag-group                 ((,class (:foreground ,css01))))
   `(org-target                    ((,class (:foreground ,haa00))))
   `(org-time-grid                 ((,class (:foreground ,haa00))))
   `(org-todo                      ((,class (:inherit fixed-pitch :underline (:color ,ott09 :line-width -1)))))
   `(org-upcoming-deadline         ((,class (:foreground ,haa00))))
   `(org-upcoming-distant-deadline ((,class (:foreground ,haa00))))
   `(org-verbatim                  ((,class (:foreground ,css02 :background ,ott06))))
   `(org-verse                     ((,class (:foreground ,haa00))))
   `(org-warning                   ((,class (:foreground ,haa00))))

;;;;;;; agenda
   `(org-agenda-calendar-event   ((,class (:foreground ,haa00))))
   `(org-agenda-calendar-sexp    ((,class (:foreground ,haa00))))
   `(org-agenda-clocking         ((,class (:foreground ,haa00))))
   `(org-agenda-column-dateline  ((,class (:foreground ,haa00))))
   `(org-agenda-current-time     ((,class (:foreground ,haa00))))
   `(org-agenda-date             ((,class (:foreground ,haa00))))
   `(org-agenda-date-today       ((,class (:foreground ,haa00))))
   `(org-agenda-date-weekend     ((,class (:foreground ,haa00))))
   `(org-agenda-diary            ((,class (:foreground ,haa00))))
   `(org-agenda-dimmed-todo-face ((,class (:foreground ,haa04 :underline (:color ,haa01 :line-width -1)))))
   `(org-agenda-done             ((,class (:foreground ,haa00))))
   `(org-agenda-filter-category  ((,class (:foreground ,haa00))))
   `(org-agenda-filter-effort    ((,class (:foreground ,haa00))))
   `(org-agenda-filter-regexp    ((,class (:foreground ,haa00))))
   `(org-agenda-filter-tags      ((,class (:foreground ,haa00))))
   `(org-agenda-restriction-lock ((,class (:foreground ,haa00))))
   `(org-agenda-structure        ((,class (:inherit variable-pitch :foreground ,ott04 :height 1.2))))

;;;;;;; block
   `(org-block            ((,class (:foreground ,fg   :background ,haa09 :extend t))))
   `(org-block-begin-line ((,class (:foreground ,bww10 :background ,ott06 :weight normal :extend t :height 0.8 :inherit variable-pitch))))
   `(org-block-end-line   ((,class (:foreground ,bww10 :background ,ott06 :weight normal :extend t :height 0.8 :inherit variable-pitch))))
   `(org-quote            ((,class (:foreground ,fg   :background ,haa08 :extend t))))

;;;;;;; checkbox
   `(org-checkbox                 ((,class (:foreground ,ott05))))
   `(org-checkbox-statistics-done ((,class (:foreground ,ott04))))
   `(org-checkbox-statistics-todo ((,class (:foreground ,css02))))

;;;;;;; level
   `(org-level-1 ((,class (:inherit sculpture-theme-head-outline-1))))
   `(org-level-2 ((,class (:inherit sculpture-theme-head-outline-2))))
   `(org-level-3 ((,class (:inherit sculpture-theme-head-outline-3))))
   `(org-level-4 ((,class (:inherit sculpture-theme-head-outline-4))))
   `(org-level-5 ((,class (:inherit sculpture-theme-head-outline-5))))
   `(org-level-6 ((,class (:inherit sculpture-theme-head-outline-6))))
   `(org-level-7 ((,class (:inherit sculpture-theme-head-outline-7))))
   `(org-level-8 ((,class (:inherit sculpture-theme-head-outline-8))))

;;;;;; shr
   `(shr-link ((,class (:inherit org-link))))
   `(shr-selected-link ((,class (:inherit org-link :background ,ott08))))

;;;;;; git-gutter
   `(git-gutter:added       ((,class (:background ,ott04))))
   `(git-gutter:deleted     ((,class (:background ,css00))))
   `(git-gutter:modified    ((,class (:background ,haa04))))
   `(git-gutter:unchanged   ((,class (:background ,haa02))))
   `(git-gutter:separator   ((,class (:background ,bww01))))
   `(git-gutter-fr:added    ((,class (:background ,ott04))))
   `(git-gutter-fr:deleted  ((,class (:background ,css00))))
   `(git-gutter-fr:modified ((,class (:background ,haa04))))

;;;;;; company
   `(company-tooltip-selection  ((,class (:foreground ,fg :underline (:color ,bww07) :weight semibold))))
   `(company-tooltip-common     ((,class (:foreground ,fg))))
   `(company-tooltip-annotation ((,class (:foreground ,haa02))))
   `(company-tooltip            ((,class (:foreground ,fg :background ,haa09 :box (:color ,bww01)))))
   `(company-scrollbar-,bg       ((,class (:background ,bg))))
   `(company-scrollbar-,fg       ((,class (:background ,bww02))))

;;;;;; message
   `(message-header-name    ((,class (:foreground ,ott00 :inherit variable-pitch))))
   `(message-header-cc      ((,class (:foreground ,ott02 :inherit variable-pitch))))
   `(message-header-to      ((,class (:foreground ,ott04 :inherit variable-pitch))))
   `(message-header-subject ((,class (:foreground ,ott05 :inherit variable-pitch))))

;;;;;; elfeed
   `(elfeed-show-tag-face            ((,class (:foreground ,haa02))))
   `(elfeed-show-misc-face           ((,class (:foreground ,fg))))
   `(elfeed-show-feed-face           ((,class (:foreground ,fg))))
   `(elfeed-show-title-face          ((,class (:foreground ,fg :inherit variable-pitch))))
   `(elfeed-show-author-face         ((,class (:foreground ,haa01))))
   `(elfeed-log-date-face            ((,class (:foreground ,bww08))))
   `(elfeed-search-tag-face          ((,class (:inherit elfeed-show-tag-face))))
   `(elfeed-search-feed-face         ((,class (:inherit elfeed-show-feed-face))))
   `(elfeed-search-date-face         ((,class (:inherit elfeed-log-date-face))))
   `(elfeed-search-title-face        ((,class (:inherit elfeed-show-title-face))))
   `(elfeed-search-filter-face       ((,class (:foreground ,haa04 :inherit variable-pitch :height 1.3))))
   `(elfeed-log-info-level-face      ((,class (:foreground ,ott08))))
   `(elfeed-log-warn-level-face      ((,class (:foreground ,ott03))))
   `(elfeed-log-debug-level-face     ((,class (:foreground ,ott05))))
   `(elfeed-log-error-level-face     ((,class (:foreground ,ott09))))
   `(elfeed-search-last-update-face  ((,class (:foreground ,fg :background ,haa06 :inherit variable-pitch))))
   `(elfeed-search-unread-count-face ((,class (:foreground ,fg :background ,ott09 :inherit variable-pitch))))
   `(elfeed-search-unread-title-face ((,class (:weight semibold))))

   `(sculpture-theme-elfeed-title-1   ((,class (:inherit sculpture-theme-head-outline-1))))
   `(sculpture-theme-elfeed-title-2   ((,class (:inherit sculpture-theme-head-outline-2))))
   `(sculpture-theme-elfeed-title-3   ((,class (:inherit sculpture-theme-head-outline-3))))
   `(sculpture-theme-elfeed-title-4   ((,class (:inherit sculpture-theme-head-outline-4))))
   `(sculpture-theme-elfeed-title-5   ((,class (:inherit sculpture-theme-head-outline-5))))
   `(sculpture-theme-elfeed-title-6   ((,class (:inherit sculpture-theme-head-outline-6))))
   `(sculpture-theme-elfeed-title-7   ((,class (:inherit sculpture-theme-head-outline-7))))
   `(sculpture-theme-elfeed-title-8   ((,class (:inherit sculpture-theme-head-outline-8))))
   `(sculpture-theme-elfeed-star-face ((,class (:underline (:color ,haa04 :line-width -1)))))

;;;;;; transient
   `(transient-unreachable       ((,class (:foreground ,bww04))))
   `(transient-inactive-value    ((,class (:foreground ,bww04))))
   `(transient-unreachable-key   ((,class (:foreground ,bww04))))
   `(transient-inactive-argument ((,class (:foreground ,bww04))))
   `(transient-inapt-suffix      ((,class (:foreground ,bww04 :inherit italic))))
   `(transient-heading           ((,class (:foreground ,ott05 :inherit variable-pitch :height 1.2 :overline t :extend t))))
   `(transient-key               ((,class (:foreground ,ott09 :underline t))))

;;;;;; magit
   `(magit-section-heading        ((,class (:foreground ,ott01 :inherit variable-pitch :height 1.2))))
   `(magit-hash                   ((,class (:foreground ,css01))))
   `(magit-branch-local           ((,class (:foreground ,css01 :background ,ott05 :inherit variable-pitch))))
   `(magit-branch-remote          ((,class (:foreground ,bg :background ,ott12 :inherit variable-pitch))))
   `(magit-diff-file-heading      ((,class (:foreground ,fg :weight bold :inherit variable-pitch))))
   `(magit-diff-removed-highlight ((,class (:foreground ,css01 :background ,ott03))))
   `(magit-diff-added-highlight   ((,class (:foreground ,bg :background ,ott02))))
   `(magit-diff-removed           ((,class (:foreground ,css01 :background ,css00))))
   `(magit-diff-added             ((,class (:foreground ,bg :background ,ott01))))
   `(magit-log-author             ((,class (:foreground ,ott05))))
   `(magit-log-date               ((,class (:foreground ,css01))))
   `(magit-log-graph              ((,class (:foreground ,ott00))))
   `(magit-tag                    ((,class (:foreground ,haa04 :underline t :inherit variable-pitch))))
   `(magit-popup-disabled-argument((,class (:foreground ,bww04))))

;;;;;; orderless
   `(orderless-match-face-0 ((,class (:inherit sculpture-theme-head-outline-2 :weight bold))))
   `(orderless-match-face-1 ((,class (:inherit sculpture-theme-head-outline-4 :weight bold))))
   `(orderless-match-face-2 ((,class (:inherit sculpture-theme-head-outline-5 :weight bold))))
   `(orderless-match-face-3 ((,class (:inherit sculpture-theme-head-outline-3 :weight bold))))

;;;;;; ediff
   `(ediff-odd-diff-Ancestor ((,class (:background ,ott06))))
   `(ediff-odd-diff-C ((,class (:background ,ott06))))
   `(ediff-odd-diff-B ((,class (:background ,ott13))))
   `(ediff-odd-diff-A ((,class (:background ,ott06))))
   `(ediff-even-diff-Ancestor ((,class (:background ,ott06))))
   `(ediff-even-diff-C ((,class (:background ,ott13))))
   `(ediff-even-diff-B ((,class (:background ,ott06))))
   `(ediff-even-diff-A ((,class (:background ,ott06))))))

(provide-theme 'sculpture-new)

;;; sculpture-new-theme.el ends here
