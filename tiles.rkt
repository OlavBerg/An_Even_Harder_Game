#lang racket/gui
(require "classes.rkt")
(provide (all-defined-out))



;Background color for wall tiles and outside-tile

(define background-color (make-object color% 145 156 255))



;Building blocks for wall tiles

(define horizontal-wall
  (let* ((empty-bitmap (make-object bitmap% 30 5))
         (dc (send empty-bitmap make-dc)))
    (send dc set-brush "black" 'solid)
    (send dc set-pen "black" 0 'transparent)
    (send dc draw-rectangle 0 0 30 5)
    empty-bitmap))

(define vertical-wall
  (let* ((empty-bitmap (make-object bitmap% 5 30))
         (dc (send empty-bitmap make-dc)))
    (send dc set-brush "black" 'solid)
    (send dc set-pen "black" 0 'transparent)
    (send dc draw-rectangle 0 0 5 30)
    empty-bitmap))

(define wall-corner
  (let* ((empty-bitmap (make-object bitmap% 5 5))
         (dc (send empty-bitmap make-dc)))
    (send dc set-brush "black" 'solid)
    (send dc set-pen "black" 0 'transparent)
    (send dc draw-rectangle 0 0 5 5)
    empty-bitmap))





;Tiles

(define pathway-tile-1
  (new tile%
       [number 1]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush "white" 'transparent)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 empty-bitmap)]
       [solid #f]))

(define pathway-tile-2
  (new tile%
       [number 2]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush (make-object color% 218 228 233) 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 empty-bitmap)]
       [solid #f]))

(define outside-tile
  (new tile%
       [number 0]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-3
  (new tile%
       [number 3]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-4
  (new tile%
       [number 4]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-5
  (new tile%
       [number 5]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-6
  (new tile%
       [number 6]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-7
  (new tile%
       [number 7]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-8
  (new tile%
       [number 8]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-9
  (new tile%
       [number 9]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-10
  (new tile%
       [number 10]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-11
  (new tile%
       [number 11]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-12
  (new tile%
       [number 12]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-13
  (new tile%
       [number 13]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap vertical-wall 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-14
  (new tile%
       [number 14]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-15
  (new tile%
       [number 15]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-16
  (new tile%
       [number 16]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-17
  (new tile%
       [number 17]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-18
  (new tile%
       [number 18]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-19
  (new tile%
       [number 19]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-20
  (new tile%
       [number 20]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap wall-corner 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-21
  (new tile%
       [number 21]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap wall-corner 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-22
  (new tile%
       [number 22]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-23
  (new tile%
       [number 23]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-24
  (new tile%
       [number 24]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-25
  (new tile%
       [number 25]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-26
  (new tile%
       [number 26]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 25 25)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-27
  (new tile%
       [number 27]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 25 25)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-28
  (new tile%
       [number 28]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-29
  (new tile%
       [number 29]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-30
  (new tile%
       [number 30]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-31
  (new tile%
       [number 31]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-32
  (new tile%
       [number 32]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-33
  (new tile%
       [number 33]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap vertical-wall 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-34
  (new tile%
       [number 34]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-35
  (new tile%
       [number 35]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-36
  (new tile%
       [number 36]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap wall-corner 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-37
  (new tile%
       [number 37]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-38
  (new tile%
       [number 38]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-39
  (new tile%
       [number 39]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-40
  (new tile%
       [number 40]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 (send dc draw-bitmap wall-corner 0 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-41
  (new tile%
       [number 41]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-42
  (new tile%
       [number 42]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-43
  (new tile%
       [number 43]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-44
  (new tile%
       [number 44]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 25)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-45
  (new tile%
       [number 45]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 (send dc draw-bitmap wall-corner 25 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-46
  (new tile%
       [number 46]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-47
  (new tile%
       [number 47]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap vertical-wall 0 0)
                 (send dc draw-bitmap horizontal-wall 0 0)
                 (send dc draw-bitmap vertical-wall 25 0)
                 (send dc draw-bitmap horizontal-wall 0 25)
                 empty-bitmap)]
       [solid #t]))

(define wall-tile-48
  (new tile%
       [number 48]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush background-color 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 (send dc draw-bitmap wall-corner 0 0)
                 (send dc draw-bitmap wall-corner 25 0)
                 (send dc draw-bitmap wall-corner 25 25)
                 (send dc draw-bitmap wall-corner 0 25)
                 empty-bitmap)]
       [solid #t]))



(define start-tile
  (new tile%
       [number 49]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush "lightgreen" 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 empty-bitmap)]
       [solid #f]))

(define goal-tile
  (new tile%
       [number 50]
       [bitmap (let* ((empty-bitmap (make-object bitmap% 30 30))
                      (dc (send empty-bitmap make-dc)))
                 (send dc set-brush "pink" 'solid)
                 (send dc set-pen "black" 0 'transparent)
                 (send dc draw-rectangle 0 0 30 30)
                 empty-bitmap)]
       [solid #f]))







(define tiles (make-hash 
               (list (cons 0 outside-tile)
                     (cons 1 pathway-tile-1)
                     (cons 2 pathway-tile-2)
                     (cons 3 wall-tile-3)
                     (cons 4 wall-tile-4)
                     (cons 5 wall-tile-5)
                     (cons 6 wall-tile-6)
                     (cons 7 wall-tile-7)
                     (cons 8 wall-tile-8)
                     (cons 9 wall-tile-9)
                     (cons 10 wall-tile-10)
                     (cons 11 wall-tile-11)
                     (cons 12 wall-tile-12)
                     (cons 13 wall-tile-13)
                     (cons 14 wall-tile-14)
                     (cons 15 wall-tile-15)
                     (cons 16 wall-tile-16)
                     (cons 17 wall-tile-17)
                     (cons 18 wall-tile-18)
                     (cons 19 wall-tile-19)
                     (cons 20 wall-tile-20)
                     (cons 21 wall-tile-21)
                     (cons 22 wall-tile-22)
                     (cons 23 wall-tile-23)
                     (cons 24 wall-tile-24)
                     (cons 25 wall-tile-25)
                     (cons 26 wall-tile-26)
                     (cons 27 wall-tile-27)
                     (cons 28 wall-tile-28)
                     (cons 29 wall-tile-29)
                     (cons 30 wall-tile-30)
                     (cons 31 wall-tile-31)
                     (cons 32 wall-tile-32)
                     (cons 33 wall-tile-33)
                     (cons 34 wall-tile-34)
                     (cons 35 wall-tile-35)
                     (cons 36 wall-tile-36)
                     (cons 37 wall-tile-37)
                     (cons 38 wall-tile-38)
                     (cons 39 wall-tile-39)
                     (cons 40 wall-tile-40)
                     (cons 41 wall-tile-41)
                     (cons 42 wall-tile-42)
                     (cons 43 wall-tile-43)
                     (cons 44 wall-tile-44)
                     (cons 45 wall-tile-45)
                     (cons 46 wall-tile-46)
                     (cons 47 wall-tile-47)
                     (cons 48 wall-tile-48)
                     (cons 49 start-tile)
                     (cons 50 goal-tile))))

(define (get-tile nr)
  (hash-ref tiles nr))














