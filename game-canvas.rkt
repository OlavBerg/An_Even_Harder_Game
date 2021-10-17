#lang racket/gui
(require "classes.rkt")
(require "frames.rkt")
(require "graphics.rkt")
(provide (all-defined-out))


(define game-canvas 
  (new game-canvas%
       [parent game-window]
       [paint-callback
        (lambda (canvas dc)
          (let ((current-level (send game-window get-current-level)))
            (draw-map current-level dc)
            (draw-player dc)
            (draw-enemies current-level dc)
            (draw-coins current-level dc)))]))
