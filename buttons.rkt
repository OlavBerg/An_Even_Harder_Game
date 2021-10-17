#lang racket/gui
(require "classes.rkt")
(require "frames.rkt")
(require "game-canvas.rkt")
(require "levels.rkt")
(provide (all-defined-out))




(define start-game-button 
  (new button%
       [label "Start Game"]
       [parent main-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level1)
                   (send level1 restart)
                   (send game-window start-timers)
                   (send main-menu show #f)
                   (send game-window show #t))]))


(define select-level-button 
  (new button%
       [label "Select Level"]
       [parent main-menu]
       [callback (lambda (button event)
                   (send main-menu show #f)
                   (send level-select-menu show #t))]))



(define back-button
  (new button%
       [label "Back"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send level-select-menu show #f)
                   (send main-menu show #t))]))


(define level1-button 
  (new button%
       [label "level 1"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level1)
                   (send level1 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))


(define level2-button 
  (new button%
       [label "level 2"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level2)
                   (send level2 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level3-button 
  (new button%
       [label "level 3"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level3)
                   (send level3 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))


(define level4-button 
  (new button%
       [label "level 4"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level4)
                   (send level4 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level5-button 
  (new button%
       [label "level 5"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level5)
                   (send level5 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level6-button 
  (new button%
       [label "level 6"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level6)
                   (send level6 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level7-button 
  (new button%
       [label "level 7"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level7)
                   (send level7 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level8-button 
  (new button%
       [label "level 8"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level8)
                   (send level8 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level9-button 
  (new button%
       [label "level 9"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level9)
                   (send level9 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define level10-button 
  (new button%
       [label "level 10"]
       [parent level-select-menu]
       [callback (lambda (button event)
                   (send game-window set-current-level! level10)
                   (send level10 restart)
                   (send game-window start-timers)
                   (send level-select-menu show #f)
                   (send game-window show #t))]))

(define quit-button
  (new button%
       [label "Quit"]
       [parent game-window]
       [callback (lambda (button event)
                   (send game-window show #f)
                   (send main-menu show #t)
                   (send game-window stop-timers)
                   (send game-canvas key-up! 'right)
                   (send game-canvas key-up! 'right)
                   (send game-canvas key-up! 'right)
                   (send game-canvas key-up! 'right))]))
                   


(define return-to-main-menu-button 
  (new button%
       [label "Return To Main Menu"]
       [parent victory-menu]
       [callback (lambda (button event)
                   (send victory-menu show #f)
                   (send main-menu show #t))]))

