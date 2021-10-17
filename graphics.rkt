#lang racket/gui
(require "help-procedures.rkt")
(require "player-character.rkt")
(provide (all-defined-out))


(define (draw-map level dc)
  (send dc
        draw-bitmap
        (send level get-graphic-map)
        0
        0))

(define (draw-player dc)
  (send dc set-brush "orange" 'solid)
  (send dc
        draw-rectangle
        (send player get-xpos)
        (send player get-ypos)
        20
        20))

(define (draw-enemy enemy dc)
  (send dc
        draw-rectangle
        (send enemy get-xpos)
        (send enemy get-ypos)
        20
        20))

(define (draw-enemies level dc)
  (define (helper enemies)
    (when (not (empty? enemies))
      (draw-enemy (first-enemy enemies) dc)
      (helper (rest-of-enemies enemies))))
  (send dc set-brush "red" 'solid)
  (helper (send level get-enemies)))

(define (draw-coin coin dc)
  (send dc 
        draw-ellipse
        (send coin get-xpos)
        (send coin get-ypos)
        16
        16))

(define (draw-coins level dc)
  (define (helper coins)
    (when (not (empty? coins))
      (draw-coin (first-coin coins) dc)
      (helper (rest-of-coins coins))))
  (send dc set-brush "yellow" 'solid)
  (helper (send level get-current-coins)))