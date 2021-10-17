#lang racket/gui
(require "tiles.rkt")
(provide (all-defined-out))



;Structure Building Procedure

(define (make-level-structure map-file)
  #|Creates a level structure out of a given map file.
    The map file consists of a matrix of numbers, each number corresponding
    to a specific tile.|#
  (define new-structure (make-vector 14))
  (define (make-row infile)
    #|Creates a row of tiles.|#
    (define new-row (make-vector 22))
    (define (helper pos)
      (if (> pos 21)
          new-row
          (let ((tile-nr (read infile)))
            (vector-set! new-row pos (get-tile tile-nr))
            (helper (+ pos 1)))))
    (helper 0))
  (define (helper row-index infile)
    (if (> row-index 13)
        new-structure
        (begin (vector-set! new-structure row-index (make-row infile))
               (helper (+ row-index 1) infile))))
  (let ((infile (open-input-file map-file)))
    (helper 0 infile)
    (close-input-port infile)
    new-structure))





;Level Structures

(define level1-structure
  (make-level-structure "level files/level1.txt"))

(define level2-structure
  (make-level-structure "level files/level2.txt"))

(define level3-structure
  (make-level-structure "level files/level3.txt"))

(define level4-structure
  (make-level-structure "level files/level4.txt"))

(define level5-structure
  (make-level-structure "level files/level5.txt"))

(define level6-structure
  (make-level-structure "level files/level6.txt"))

(define level7-structure
  (make-level-structure "level files/level7.txt"))

(define level8-structure
  (make-level-structure "level files/level8.txt"))

(define level9-structure
  (make-level-structure "level files/level9.txt"))

(define level10-structure
  (make-level-structure "level files/level10.txt"))
