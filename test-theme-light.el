(autothemer-deftheme test-theme-light "Autothemer example..."

  ;; Specify the color classes used by the theme
  ((((class color) (min-colors #xFFFFFF)))

    ;; Specify the color palette for each of the classes above.
    (example-red    "#781210")
    (example-green  "#22881F")
    (example-blue   "#212288")
    (example-purple "#812FFF")
    (example-yellow "#EFFE00")
    (example-orange "#E06500")
    (example-cyan   "#22DDFF"))

    ;; specifications for Emacs faces.
    ((button (:underline t :weight 'bold))
     )

    ;; Forms after the face specifications are evaluated.
    ;; (palette vars can be used, read below for details.)
    (custom-theme-set-variables 'test-theme-light
        `(ansi-color-names-vector [,example-red
                                   ,example-green
                                   ,example-blue
                                   ,example-purple
                                   ,example-yellow
                                   ,example-orange
                                   ,example-cyan])))

(provide 'test-theme-light)
