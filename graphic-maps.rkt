#lang racket/gui
(require "level-structures.rkt")
(provide (all-defined-out))


;Map Building Procedure

(define (make-graphic-map level-structure)
  #|Creates a graphical image of level.|#
  (define (vector-empty? vector)
    (= (vector-length vector) 0))
  (define (first-row level-structure)
    (vector-ref level-structure 0))
  (define (rest-of-rows level-structure)
    (vector-drop level-structure 1))
  (define (draw-row tile-row ypos dc)
    (define (first-tile tile-row)
      (vector-ref tile-row 0))
    (define (rest-of-tiles tile-row)
      (vector-drop tile-row 1))
    (define (draw-tile-bitmap tile xpos)
      (send dc
            draw-bitmap
            (send tile get-bitmap)
            xpos
            ypos))
    (define (helper tile-row xpos)
      (when (not (vector-empty? tile-row))
        (begin (draw-tile-bitmap (first-tile tile-row) xpos)
               (helper (rest-of-tiles tile-row) (+ xpos 30)))))
    (helper tile-row 0))
  (define (helper level-structure ypos dc)
    (when (not (vector-empty? level-structure))
      (begin (draw-row (first-row level-structure) ypos dc)
             (helper (rest-of-rows level-structure) (+ ypos 30) dc))))
  (let* ((new-map (make-object bitmap% 660 420))
         (dc (send new-map make-dc)))
    (helper level-structure 0 dc)
    new-map))



;Graphic Maps

(define level1-graphic-map
  (make-graphic-map level1-structure))

(define level2-graphic-map
  (make-graphic-map level2-structure))

(define level3-graphic-map
  (make-graphic-map level3-structure))

(define level4-graphic-map
  (make-graphic-map level4-structure))

(define level5-graphic-map
  (make-graphic-map level5-structure))

(define level6-graphic-map
  (make-graphic-map level6-structure))

(define level7-graphic-map
  (make-graphic-map level7-structure))

(define level8-graphic-map
  (make-graphic-map level8-structure))

(define level9-graphic-map
  (make-graphic-map level9-structure))

(define level10-graphic-map
  (make-graphic-map level10-structure))


