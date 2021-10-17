#lang racket/gui

(require "classes.rkt")
(require "coins.rkt")
(require "enemies.rkt")
(require "frames.rkt")
(require "game-canvas.rkt")
(require "graphic-maps.rkt")
(require "level-structures.rkt")
(require "player-character.rkt")
(provide (all-defined-out))




(define level1
  (new level%
       [number 1]
       [structure level1-structure]
       [graphic-map level1-graphic-map]
       [start-xpos 110]
       [start-ypos 260]
       [player-character player]
       [enemies (list l1-enemy1 
                      l1-enemy2 
                      l1-enemy3 
                      l1-enemy4)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level2)
          (send level2 restart))]))

(define level2
  (new level%
       [number 2]
       [structure level2-structure]
       [graphic-map level2-graphic-map]
       [start-xpos 170]
       [start-ypos 320]
       [player-character player]
       [enemies (list l2-enemy1 
                      l2-enemy2 
                      l2-enemy3 
                      l2-enemy4 
                      l2-enemy5 
                      l2-enemy6 
                      l2-enemy7 
                      l2-enemy8 )]
       [all-coins (list l2-coin1)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level3)
          (send level3 restart))]))

(define level3
  (new level%
       [number 3]
       [structure level3-structure]
       [graphic-map level3-graphic-map]
       [start-xpos 562]
       [start-ypos 322]
       [player-character player]
       [enemies (list l3-enemy1 
                      l3-enemy2 
                      l3-enemy3 
                      l3-enemy4)]
       [all-coins (list l3-coin1 
                        l3-coin2)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level4)
          (send level4 restart))]))

(define level4
  (new level%
       [number 4]
       [structure level4-structure]
       [graphic-map level4-graphic-map]
       [start-xpos 110]
       [start-ypos 200]
       [player-character player]
       [enemies (list l4-enemy1
                      l4-enemy2
                      l4-enemy3
                      l4-enemy4
                      l4-enemy5
                      l4-enemy6
                      l4-enemy7
                      l4-enemy8
                      l4-enemy9
                      l4-enemy10
                      l4-enemy11
                      l4-enemy12
                      l4-enemy13
                      l4-enemy14
                      l4-enemy15
                      l4-enemy16)]
       [all-coins (list l4-coin1
                        l4-coin2
                        l4-coin3
                        l4-coin4)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level5)
          (send level5 restart))]))


(define level5
  (new level%
       [number 5]
       [structure level5-structure]
       [graphic-map level5-graphic-map]
       [start-xpos 80]
       [start-ypos 350]
       [player-character player]
       [enemies (list l5-enemy1 
                      l5-enemy2 
                      l5-enemy3 
                      l5-enemy4 
                      l5-enemy5 
                      l5-enemy6 
                      l5-enemy7 
                      l5-enemy8 
                      l5-enemy9 
                      l5-enemy10 
                      l5-enemy11 
                      l5-enemy12
                      l5-enemy13 
                      l5-enemy14)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level6)
          (send level6 restart))]))



(define level6
  (new level%
       [number 6]
       [structure level6-structure]
       [graphic-map level6-graphic-map]
       [start-xpos 80]
       [start-ypos 50]
       [player-character player]
       [enemies (list l6-enemy1 
                      l6-enemy2 
                      l6-enemy3 
                      l6-enemy4 
                      l6-enemy5 
                      l6-enemy6 
                      l6-enemy7 
                      l6-enemy8 
                      l6-enemy9 
                      l6-enemy10 
                      l6-enemy11 
                      l6-enemy12 
                      l6-enemy13)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level7)
          (send level7 restart))]))


(define level7
  (new level%
       [number 7]
       [structure level7-structure]
       [graphic-map level7-graphic-map]
       [start-xpos 140]
       [start-ypos 200]
       [player-character player]
       [enemies (list l7-enemy1 
                      l7-enemy2 
                      l7-enemy3 
                      l7-enemy4)]
       [all-coins (list l7-coin1 
                        l7-coin2 
                        l7-coin3 
                        l7-coin4)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level8)
          (send level8 restart))]))



(define level8
  (new level%
       [number 8]
       [structure level8-structure]
       [graphic-map level8-graphic-map]
       [start-xpos 215]
       [start-ypos 275]
       [player-character player]
       [enemies (list l8-enemy1
                      l8-enemy2
                      l8-enemy3
                      l8-enemy4
                      l8-enemy5
                      l8-enemy6
                      l8-enemy7
                      l8-enemy8
                      l8-enemy9
                      l8-enemy10
                      l8-enemy11
                      l8-enemy12
                      l8-enemy13
                      l8-enemy14
                      l8-enemy15
                      l8-enemy16
                      l8-enemy17
                      l8-enemy18
                      l8-enemy19
                      l8-enemy20
                      l8-enemy21
                      l8-enemy22
                      l8-enemy23
                      l8-enemy24
                      l8-enemy25
                      l8-enemy26
                      l8-enemy27
                      l8-enemy28
                      l8-enemy29
                      l8-enemy30
                      l8-enemy31
                      l8-enemy32
                      l8-enemy33
                      l8-enemy34
                      l8-enemy35
                      l8-enemy36)]
       [all-coins (list l8-coin1
                        l8-coin2
                        l8-coin3
                        l8-coin4
                        l8-coin5
                        l8-coin6
                        l8-coin7
                        l8-coin8)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level9)
          (send level9 restart))]))




(define level9
  (new level%
       [number 9]
       [structure level9-structure]
       [graphic-map level9-graphic-map]
       [start-xpos 125]
       [start-ypos 35]
       [player-character player]
       [enemies (list l9-enemy1
                      l9-enemy2
                      l9-enemy3
                      l9-enemy4
                      l9-enemy5
                      l9-enemy6
                      l9-enemy7
                      l9-enemy8
                      l9-enemy9
                      l9-enemy10
                      l9-enemy11
                      l9-enemy12
                      l9-enemy13
                      l9-enemy14
                      l9-enemy15
                      l9-enemy16
                      l9-enemy17
                      l9-enemy18
                      l9-enemy19
                      l9-enemy20
                      l9-enemy21
                      l9-enemy22
                      l9-enemy23
                      l9-enemy24
                      l9-enemy25
                      l9-enemy26
                      l9-enemy27
                      l9-enemy28
                      l9-enemy29
                      l9-enemy30
                      l9-enemy31
                      l9-enemy32
                      l9-enemy33
                      l9-enemy34
                      l9-enemy35
                      l9-enemy36)]
       [all-coins (list l9-coin1
                        l9-coin2
                        l9-coin3
                        l9-coin4
                        l9-coin5
                        l9-coin6
                        l9-coin7
                        l9-coin8
                        l9-coin9
                        l9-coin10
                        l9-coin11
                        l9-coin12
                        l9-coin13
                        l9-coin14
                        l9-coin15
                        l9-coin16
                        l9-coin17
                        l9-coin18)]
       [finnish-proc 
        (lambda ()
          (send game-window
                set-current-level!
                level10)
          (send level10 restart))]))




(define level10
  (new level%
       [number 10]
       [structure level10-structure]
       [graphic-map level10-graphic-map]
       [start-xpos 50]
       [start-ypos 200]
       [player-character player]
       [enemies (list l10-enemy1
                      l10-enemy2
                      l10-enemy3
                      l10-enemy4
                      l10-enemy5
                      l10-enemy6
                      l10-enemy7
                      l10-enemy8
                      l10-enemy9
                      l10-enemy10
                      l10-enemy11
                      l10-enemy12
                      l10-enemy13
                      l10-enemy14
                      l10-enemy15
                      l10-enemy16
                      l10-enemy17
                      l10-enemy18
                      l10-enemy19
                      l10-enemy20)]
       [all-coins (list l10-coin1
                        l10-coin2
                        l10-coin3
                        l10-coin4)]
       [finnish-proc 
        (lambda ()
          (send game-window show #f)
          (send victory-menu show #t)
          (send game-window stop-timers)
          (send game-canvas key-up! 'right)
          (send game-canvas key-up! 'left)
          (send game-canvas key-up! 'down)
          (send game-canvas key-up! 'up))]))



(define levels
  (make-hash 
   (list (cons 1 level1)
         (cons 2 level2)
         (cons 3 level3)
         (cons 4 level4)
         (cons 5 level5)
         (cons 6 level6)
         (cons 7 level7)
         (cons 8 level8)
         (cons 9 level9)
         (cons 10 level10))))


(define (get-level level-nr)
  (hash-ref level-nr levels))








