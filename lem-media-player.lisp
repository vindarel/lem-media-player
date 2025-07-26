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

(define-command media-player-stop () ()
  (stop))

(define-command media-player-play-directory (dir) ((:file "Play this directory: "))
  "Play all media files in a directory."
  (play dir))

(define-command media-player-next () ()
  (playlist-next))

(define-command media-player-previous () ()
  (playlist-previous))

