#lang racket/gui
(require "classes.rkt")
(require "player-character.rkt")
(provide (all-defined-out))



(define main-menu
  (new frame%
       [label "Main Menu"]
       [x 650]
       [y 420]
       [min-width 660]
       [min-height 420]
       [stretchable-width #f]
       [stretchable-height #f]))



(define level-select-menu
  (new frame%
       [label "Select Level"]
       [x 650]
       [y 420]
       [min-width 660]
       [min-height 420]
       [stretchable-width #f]
       [stretchable-height #f]))


(define victory-menu
  (new frame%
       [label "Victory!!!!!"]
       [x 650]
       [y 420]
       [min-width 660]
       [min-height 420]
       [stretchable-width #f]
       [stretchable-height #f]))


(define game-window
  (new game-frame%
       [label "An Even Harder Game"]
       [x 650]
       [y 420]
       [min-width 660]
       [min-height 450]
       [stretchable-width #f]
       [stretchable-height #f]
       [physics-timer 
        (new game-timer%
             [interval 1]
             [notify-callback
              (lambda ()
                (let ((game-canvas (car (send game-window get-children)))
                      (current-level (send game-window get-current-level)))
                  (send player move current-level game-canvas)
                  (send current-level move-enemies)
                  (when (send current-level collision-with-enemy?)
                    (send current-level restart))
                  (send current-level pick-coins)))])]
       [graphics-timer
        (new game-timer%
             [interval 16]
             [notify-callback
              (lambda ()
                (send game-window refresh))])]))
                        
                        
                        
                        
                        