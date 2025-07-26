(uiop:define-package :lem/media-player
    (:use :cl
          :media-player
          :lem))

(in-package :lem/media-player)


 (define-major-mode mediaplayer-mode nil
    (:name "mediaplaer"
     :syntax-table nil
     :keymap *mediaplayer-mode-keymap*)
  )

(define-command media-player-play () ()
  "Play the file at point."
  (let ((file (lem/directory-mode/internal:get-pathname (current-point))))
    (play file)))

(define-command media-player-toggle () ()
  (toggle-pause))
