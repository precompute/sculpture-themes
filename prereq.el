;(add-to-list 'package-archives )
(setq proto "https")
(setq package-archives
      (list (cons "gnu"   (concat proto "://elpa.gnu.org/packages/"))
            (cons "melpa" (concat proto "://melpa.org/packages/"))
            ))
(package-initialize)
(package-install 'autothemer)
