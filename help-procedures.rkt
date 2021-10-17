#lang racket/gui
(provide (all-defined-out))

(define (first-enemy enemies)
  (car enemies))

(define (rest-of-enemies enemies)
  (cdr enemies))

(define (first-coin coins)
  (car coins))

(define (rest-of-coins coins)
  (cdr coins))

(define (number-is-in-interval? number min max)
  (and (>= number min) (<= number max)))

(define (goal-tile? tile)
  (= (send tile get-number) 50))












