;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; ---------------------------
;;
;; sea: A dark color theme
;;
;; ----------------------------

(unless (>= emacs-major-version 24)
  (error "requires Emacs 24 or later."))

(deftheme sea "A dark color theme for Emacs")

(let ((*background*         "#161A1F")
      (*comments*           "#8c7f75")
      (*constant*           "#3086F3")
      (*current-line*       "#151515")
      (*cursor-underscore*  "#FFFF00")	;"#AAFAFF"
      (*keywords*           "#27A9FF")
      (*line-number*        "#061A1F")
      (*method-declaration* "#A7D2FF")
      (*mode-line-bg*       "#CCCCCC")
      (*mode-inactive-bg*   "#222")
      (*mode-line-fg*       "#333333")
      (*mode-inactive-fg*   "#FFF")
      (*normal*             "#FFF")	;#dedede
      (*number*             "#0C58FC")
      (*operators*          "#3086f3")
      (*warning*            "#ff6c60")
      (*regexp*             "#C9E")
      (*string*             "#A7D2FF")  ;"#9B9490"
      (*variable*           "#C6C5FE")
      (*visual-selection*   "#2D2F31"))


  ;; (custom-set-faces
  ;;  '(neo-root-dir-face ((t (:foreground, *comments* ))))
  ;;  '(neo-dir-link-face ((t (:foreground, *constant* ))))
  ;;  '(neo-file-link-face ((t (:foreground, *normal*  ))))
  ;;  )
    
  
  (custom-theme-set-faces
   'sea

   `(bold ((t (:bold t))))
   `(button ((t (:foreground, *keywords* :underline t))))
   `(default ((t (:background, *background* :foreground, *normal*))))
   `(header-line ((t (:background, *mode-line-bg* :foreground, *normal*)))) ;; info header
   `(highlight ((t (:background, *current-line*))))
   `(highlight-face ((t (:background, *current-line*))))
   `(hl-line ((t (:background, *current-line* :underline t))))
   `(info-xref ((t (:foreground, *keywords* :underline t))))
   `(region ((t (:background, *visual-selection*))))
   `(underline ((nil (:underline t))))
   
   ;; neotree
   `(neo-root-dir-face ((t (:foreground, *comments* ))))
   `(neo-dir-link-face ((t (:foreground, *method-declaration* ))))
   `(neo-file-link-face ((t (:foreground, *normal*  ))))
   
   ;; font-lock
   `(font-lock-builtin-face ((t (:foreground, *operators*))))
   `(font-lock-comment-delimiter-face ((t (:foreground, *comments*))))
   `(font-lock-comment-face ((t (:foreground, *comments*))))
   `(font-lock-constant-face ((t (:foreground, *constant*))))
   `(font-lock-doc-face ((t (:foreground, *string*))))
   `(font-lock-doc-string-face ((t (:foreground, *string*))))
   `(font-lock-function-name-face ((t (:foreground, *method-declaration*))))
   `(font-lock-keyword-face ((t (:foreground, *keywords*))))
   `(font-lock-negation-char-face ((t (:foreground, *warning*))))
   `(font-lock-number-face ((t (:foreground, *number*))))
   `(font-lock-preprocessor-face ((t (:foreground, *keywords*))))
   `(font-lock-reference-face ((t (:foreground, *constant*))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground, *regexp*))))
   `(font-lock-regexp-grouping-construct ((t (:foreground, *regexp*))))
   `(font-lock-string-face ((t (:foreground, *string*))))
   `(font-lock-type-face ((t (:foreground, *operators*))))
   `(font-lock-variable-name-face ((t (:foreground, *variable*))))
   `(font-lock-warning-face ((t (:foreground, *warning*))))

   ;; GUI
   `(fringe ((t (:background, *background*))))
   `(linum ((t (:background, *line-number*))))
   `(minibuffer-prompt ((t (:foreground, *variable*))))
   `(mode-line ((t (:background, *mode-line-bg* :foreground, *mode-line-fg*))))
   `(mode-line-inactive ((t (:background, *mode-inactive-bg* :foreground, *mode-inactive-fg*))))
   `(cursor ((t (:background, *cursor-underscore*))))
   `(text-cursor ((t (:background, *cursor-underscore*))))
   `(vertical-border ((t (:foreground, *background*)))) ;; between splits

   ;; show-paren
   `(show-paren-mismatch ((t (:background, *warning* :foreground, *normal* :weight bold))))
   `(show-paren-match ((t (:background, *keywords* :foreground, *normal* :weight bold))))

   ;; search
   `(isearch ((t (:background, *regexp* :foreground, *visual-selection*))))
   `(isearch-fail ((t (:background, *warning*))))
   `(lazy-highlight ((t (:background, *operators* :foreground, *visual-selection*))))

   ))

;; colores para neotree

    ;; (custom-set-faces
    ;;  '(neo-root-dir-face ((t (:foreground *comments* ))))
    ;;  '(neo-dir-link-face ((t (:foreground *constant* ))))
    ;;  '(neo-file-link-face ((t (:foreground *normal* ))))
    ;;  )
  

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'sea)

;; Local Variables:
;; no-byte-compile: t
;; End:
