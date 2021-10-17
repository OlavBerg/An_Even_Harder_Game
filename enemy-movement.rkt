#lang racket/gui
(provide (all-defined-out))

(define (make-route direction end-xpos end-ypos)
  (list direction end-xpos end-ypos))

(define (make-movement-cycle routes)
  (define new-cycle (make-hash))
  (define (first-route routes)
    (car routes))
  (define (rest-of-routes routes)
    (cdr routes))
  (define (helper nr routes)
    (when (not (empty? routes))
      (hash-set! new-cycle nr (first-route routes))
      (helper (+ nr 1) (rest-of-routes routes))))
  (helper 1 routes)
  new-cycle)


(define (direction route)
  #|Retrieves the direction (right, left, down or up) of a specific route.|#
  (first route))

(define (end-xpos route)
  (second route))

(define (end-ypos route)
  (third route))