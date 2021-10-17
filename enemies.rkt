#lang racket/gui

(require "classes.rkt")
(require "enemy-movement.rkt")
(provide (all-defined-out))


;Level 1 Enemies

(define l1-enemy1
  (new enemy%
       [speed 6]
       [xpos 90]
       [ypos 125]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 550 90) 
                              (make-route 'left 90 90)))]))

(define l1-enemy2
  (new enemy%
       [speed 6]
       [xpos 90]
       [ypos 185]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 550 200) 
                              (make-route 'left 90 200)))]))

(define l1-enemy3
  (new enemy%
       [speed 6]
       [xpos 550]
       [ypos 155]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 90 90) 
                              (make-route 'right 550 90)))]))

(define l1-enemy4
  (new enemy%
       [speed 6]
       [xpos 550]
       [ypos 215]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 90 200) 
                              (make-route 'right 550 200)))]))




;Level 2 Enemies


(define l2-speed 3)

(define l2-enemy1
  (new enemy%
       [speed l2-speed]
       [xpos 215]
       [ypos 120]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 215 280) 
                              (make-route 'up 215 120)))]))
(define l2-enemy2
  (new enemy%
       [speed l2-speed]
       [xpos 245]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 245 120) 
                              (make-route 'down 245 280)))]))

(define l2-enemy3
  (new enemy%
       [speed l2-speed]
       [xpos 275]
       [ypos 120]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 275 280) 
                              (make-route 'up 275 120)))]))
(define l2-enemy4
  (new enemy%
       [speed l2-speed]
       [xpos 305]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 305 120) 
                              (make-route 'down 305 280)))]))

(define l2-enemy5
  (new enemy%
       [speed l2-speed]
       [xpos 335]
       [ypos 120]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 335 280) 
                              (make-route 'up 335 120)))]))
(define l2-enemy6
  (new enemy%
       [speed l2-speed]
       [xpos 365]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 365 120) 
                              (make-route 'down 365 280)))]))

(define l2-enemy7
  (new enemy%
       [speed l2-speed]
       [xpos 395]
       [ypos 120]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 395 280) 
                              (make-route 'up 395 120)))]))
(define l2-enemy8
  (new enemy%
       [speed l2-speed]
       [xpos 425]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 425 120) 
                              (make-route 'down 425 280)))]))



;Level 3 Enemies

(define l3-speed 5)


(define l3-enemy1
  (new enemy%
       [speed l3-speed]
       [xpos 245]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 245 150) 
                              (make-route 'down 245 370)))]))

(define l3-enemy2
  (new enemy%
       [speed l3-speed]
       [xpos 275]
       [ypos 150]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 275 370) 
                              (make-route 'up 275 150)))]))

(define l3-enemy3
  (new enemy%
       [speed l3-speed]
       [xpos 425]
       [ypos 250]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 425 30) 
                              (make-route 'down 425 250)))]))

(define l3-enemy4
  (new enemy%
       [speed l3-speed]
       [xpos 455]
       [ypos 30]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 455 250) 
                              (make-route 'up 455 30)))]))



;Level 4 Enemies

(define l4-speed 1)

(define l4-enemy1
  (new enemy%
       [speed l4-speed]
       [xpos 185]
       [ypos 65]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 275 65)
                              (make-route 'down 275 155)
                              (make-route 'left 185 155)
                              (make-route 'up 185 65)))]))

(define l4-enemy2
  (new enemy%
       [speed l4-speed]
       [xpos 275]
       [ypos 65]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 275 155)
                              (make-route 'left 185 155)
                              (make-route 'up 185 65)
                              (make-route 'right 275 65)))]))

(define l4-enemy3
  (new enemy%
       [speed l4-speed]
       [xpos 275]
       [ypos 155]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 185 155)
                              (make-route 'up 185 65)
                              (make-route 'right 275 65)
                              (make-route 'down 275 155)))]))

(define l4-enemy4
  (new enemy%
       [speed l4-speed]
       [xpos 185]
       [ypos 155]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 185 65)
                              (make-route 'right 275 65)
                              (make-route 'down 275 155)
                              (make-route 'left 185 155)))]))




(define l4-enemy5
  (new enemy%
       [speed l4-speed]
       [xpos 365]
       [ypos 65]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 455 65)
                              (make-route 'down 455 155)
                              (make-route 'left 365 155)
                              (make-route 'up 365 65)))]))

(define l4-enemy6
  (new enemy%
       [speed l4-speed]
       [xpos 455]
       [ypos 65]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 455 155)
                              (make-route 'left 365 155)
                              (make-route 'up 365 65)
                              (make-route 'right 455 65)))]))

(define l4-enemy7
  (new enemy%
       [speed l4-speed]
       [xpos 455]
       [ypos 155]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 365 155)
                              (make-route 'up 365 65)
                              (make-route 'right 455 65)
                              (make-route 'down 455 155)))]))

(define l4-enemy8
  (new enemy%
       [speed l4-speed]
       [xpos 365]
       [ypos 155]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 365 65)
                              (make-route 'right 455 65)
                              (make-route 'down 455 155)
                              (make-route 'left 365 155)))]))




(define l4-enemy9
  (new enemy%
       [speed l4-speed]
       [xpos 185]
       [ypos 245]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 275 245)
                              (make-route 'down 275 335)
                              (make-route 'left 185 335)
                              (make-route 'up 185 245)))]))


(define l4-enemy10
  (new enemy%
       [speed l4-speed]
       [xpos 275]
       [ypos 245]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 275 335)
                              (make-route 'left 185 335)
                              (make-route 'up 185 245)
                              (make-route 'right 275 245)))]))

(define l4-enemy11
  (new enemy%
       [speed l4-speed]
       [xpos 275]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 185 335)
                              (make-route 'up 185 245)
                              (make-route 'right 275 245)
                              (make-route 'down 275 335)))]))

(define l4-enemy12
  (new enemy%
       [speed l4-speed]
       [xpos 185]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 185 245)
                              (make-route 'right 275 245)
                              (make-route 'down 275 335)
                              (make-route 'left 185 335)))]))





(define l4-enemy13
  (new enemy%
       [speed l4-speed]
       [xpos 365]
       [ypos 245]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 455 245)
                              (make-route 'down 455 335)
                              (make-route 'left 365 335)
                              (make-route 'up 365 245)))]))

(define l4-enemy14
  (new enemy%
       [speed l4-speed]
       [xpos 455]
       [ypos 245]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 455 335)
                              (make-route 'left 365 335)
                              (make-route 'up 365 245)
                              (make-route 'right 455 245)))]))


(define l4-enemy15
  (new enemy%
       [speed l4-speed]
       [xpos 455]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 365 335)
                              (make-route 'up 365 245)
                              (make-route 'right 455 245)
                              (make-route 'down 455 335)))]))

(define l4-enemy16
  (new enemy%
       [speed l4-speed]
       [xpos 365]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 365 245)
                              (make-route 'right 455 245)
                              (make-route 'down 455 335)
                              (make-route 'left 365 335)))]))



;Level 5 Enemies

(define l5-speed 5)
(define l5-speed2 2)

(define l5-enemy1
  (new enemy%
       [speed l5-speed]
       [xpos 125]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 125 90) 
                              (make-route 'down 125 370)))]))

(define l5-enemy2
  (new enemy%
       [speed l5-speed]
       [xpos 155]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 155 370) 
                              (make-route 'up 155 90)))]))

(define l5-enemy3
  (new enemy%
       [speed l5-speed]
       [xpos 215]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 215 370) 
                              (make-route 'up 215 90)))]))

(define l5-enemy4
  (new enemy%
       [speed l5-speed]
       [xpos 245]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 245 90) 
                              (make-route 'down 245 370)))]))



(define l5-enemy5
  (new enemy%
       [speed l5-speed]
       [xpos 305]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 305 90) 
                              (make-route 'down 305 370)))]))

(define l5-enemy6
  (new enemy%
       [speed l5-speed]
       [xpos 335]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 335 370) 
                              (make-route 'up 335 90)))]))

(define l5-enemy7
  (new enemy%
       [speed l5-speed]
       [xpos 395]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 395 370) 
                              (make-route 'up 395 90)))]))

(define l5-enemy8
  (new enemy%
       [speed l5-speed]
       [xpos 425]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 425 90) 
                              (make-route 'down 425 370)))]))


(define l5-enemy9
  (new enemy%
       [speed l5-speed]
       [xpos 485]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 485 90) 
                              (make-route 'down 485 370)))]))

(define l5-enemy10
  (new enemy%
       [speed l5-speed]
       [xpos 515]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 515 370) 
                              (make-route 'up 515 90)))]))

(define l5-enemy11
  (new enemy%
       [speed l5-speed2]
       [xpos 545]
       [ypos 370]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 545 210) 
                              (make-route 'down 545 370)))]))

(define l5-enemy12
  (new enemy%
       [speed l5-speed2]
       [xpos 575]
       [ypos 210]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 575 370) 
                              (make-route 'up 575 210)))]))

(define l5-enemy13
  (new enemy%
       [speed l5-speed2]
       [xpos 95]
       [ypos 250]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 95 90) 
                              (make-route 'down 95 250)))]))

(define l5-enemy14
  (new enemy%
       [speed l5-speed2]
       [xpos 65]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 65 250) 
                              (make-route 'up 65 90)))]))



;Level 6 Enemies

(define l6-speed 3)
(define l6-speed2 2)


(define l6-enemy1
  (new enemy%
       [speed l6-speed]
       [xpos 65]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 65 280) 
                              (make-route 'up 65 90)))]))

(define l6-enemy2
  (new enemy%
       [speed l6-speed]
       [xpos 95]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 65 90) 
                              (make-route 'down 65 280)))]))

(define l6-enemy3
  (new enemy%
       [speed l6-speed]
       [xpos 125]
       [ypos 90]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 125 280) 
                              (make-route 'up 125 90)))]))

(define l6-enemy4
  (new enemy%
       [speed l6-speed2]
       [xpos 245]
       [ypos 150]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 245 280) 
                              (make-route 'up 245 150)))]))

(define l6-enemy5
  (new enemy%
       [speed l6-speed2]
       [xpos 275]
       [ypos 280]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 275 150) 
                              (make-route 'down 275 280)))]))

(define l6-enemy6
  (new enemy%
       [speed l6-speed2]
       [xpos 305]
       [ypos 150]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 305 280) 
                              (make-route 'up 305 150)))]))

(define l6-enemy7
  (new enemy%
       [speed l6-speed]
       [xpos 425]
       [ypos 150]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 425 340) 
                              (make-route 'up 425 150)))]))

(define l6-enemy8
  (new enemy%
       [speed l6-speed]
       [xpos 455]
       [ypos 340]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'up 455 150) 
                              (make-route 'down 455 340)))]))

(define l6-enemy9
  (new enemy%
       [speed l6-speed]
       [xpos 485]
       [ypos 150]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'down 485 340) 
                              (make-route 'up 485 150)))]))

(define l6-enemy10
  (new enemy%
       [speed l6-speed]
       [xpos 65]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 305 335) 
                              (make-route 'left 65 335)))]))

(define l6-enemy11
  (new enemy%
       [speed l6-speed]
       [xpos 305]
       [ypos 305]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 65 305) 
                              (make-route 'right 305 305)))]))


(define l6-enemy12
  (new enemy%
       [speed l6-speed]
       [xpos 275]
       [ypos 95]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 485 95) 
                              (make-route 'left 275 95)))]))

(define l6-enemy13
  (new enemy%
       [speed l6-speed]
       [xpos 485]
       [ypos 125]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 275 125) 
                              (make-route 'right 485 125)))]))


;Level 7 Enemies

(define l7-speed 7)

(define l7-enemy1
  (new enemy%
       [speed l7-speed]
       [xpos 150]
       [ypos 65]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 460 65) 
                              (make-route 'left 150 65)))]))

(define l7-enemy2
  (new enemy%
       [speed l7-speed]
       [xpos 460]
       [ypos 95]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 150 95) 
                              (make-route 'right 460 95)))]))

(define l7-enemy3
  (new enemy%
       [speed l7-speed]
       [xpos 150]
       [ypos 305]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'right 460 305) 
                              (make-route 'left 150 305)))]))

(define l7-enemy4
  (new enemy%
       [speed l7-speed]
       [xpos 460]
       [ypos 335]
       [movement-cycle (make-movement-cycle 
                        (list (make-route 'left 150 335) 
                              (make-route 'right 460 335)))]))


;Level 8 Enemies

(define l8-enemy1
  (new enemy%
       [speed 1]
       [xpos 305]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 305)
                              (make-route 'up 245 245)
                              (make-route 'right 305 245)
                              (make-route 'down 305 305)))]))

(define l8-enemy2
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 245)
                              (make-route 'right 305 245)
                              (make-route 'down 305 305)
                              (make-route 'left 245 305)))]))


(define l8-enemy3
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 245)
                              (make-route 'down 305 305)
                              (make-route 'left 245 305)
                              (make-route 'up 245 245)))]))



(define l8-enemy4
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 305)
                              (make-route 'up 245 245)
                              (make-route 'right 305 245)
                              (make-route 'down 305 305)))]))

(define l8-enemy5
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 245)
                              (make-route 'right 305 245)
                              (make-route 'down 305 305)
                              (make-route 'left 245 305)))]))

(define l8-enemy6
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 245)
                              (make-route 'down 305 305)
                              (make-route 'left 245 305)
                              (make-route 'up 245 245)))]))






(define l8-enemy7
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 305)
                              (make-route 'up 395 245)
                              (make-route 'left 335 245)
                              (make-route 'down 335 305)))]))

(define l8-enemy8
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 395 245)
                              (make-route 'left 335 245)
                              (make-route 'down 335 305)
                              (make-route 'right 395 305)))]))

(define l8-enemy9
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 245)
                              (make-route 'down 335 305)
                              (make-route 'right 395 305)
                              (make-route 'up 395 245)))]))

(define l8-enemy10
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 305)
                              (make-route 'up 395 245)
                              (make-route 'left 335 245)
                              (make-route 'down 335 305)))]))

(define l8-enemy11
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 395 245)
                              (make-route 'left 335 245)
                              (make-route 'down 335 305)
                              (make-route 'right 395 305)))]))

(define l8-enemy12
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 245)
                              (make-route 'down 335 305)
                              (make-route 'right 395 305)
                              (make-route 'up 395 245)))]))








(define l8-enemy13
  (new enemy%
       [speed 1]
       [xpos 305]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 155)
                              (make-route 'down 245 215)
                              (make-route 'right 305 215)
                              (make-route 'up 305 155)))]))

(define l8-enemy14
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 245 215)
                              (make-route 'right 305 215)
                              (make-route 'up 305 155)
                              (make-route 'left 245 155)))]))

(define l8-enemy15
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 215)
                              (make-route 'up 305 155)
                              (make-route 'left 245 155)
                              (make-route 'down 245 215)))]))

(define l8-enemy16
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 155)
                              (make-route 'down 245 215)
                              (make-route 'right 305 215)
                              (make-route 'up 305 155)))]))

(define l8-enemy17
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 245 215)
                              (make-route 'right 305 215)
                              (make-route 'up 305 155)
                              (make-route 'left 245 155)))]))

(define l8-enemy18
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 215)
                              (make-route 'up 305 155)
                              (make-route 'left 245 155)
                              (make-route 'down 245 215)))]))










(define l8-enemy19
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 155)
                              (make-route 'down 395 215)
                              (make-route 'left 335 215)
                              (make-route 'up 335 155)))]))

(define l8-enemy20
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 395 215)
                              (make-route 'left 335 215)
                              (make-route 'up 335 155)
                              (make-route 'right 395 155)))]))

(define l8-enemy21
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 215)
                              (make-route 'up 335 155)
                              (make-route 'right 395 155)
                              (make-route 'down 395 215)))]))

(define l8-enemy22
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 155)
                              (make-route 'down 395 215)
                              (make-route 'left 335 215)
                              (make-route 'up 335 155)))]))

(define l8-enemy23
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 395 215)
                              (make-route 'left 335 215)
                              (make-route 'up 335 155)
                              (make-route 'right 395 155)))]))

(define l8-enemy24
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 215)
                              (make-route 'up 335 155)
                              (make-route 'right 395 155)
                              (make-route 'down 395 215)))]))






(define l8-enemy25
  (new enemy%
       [speed 1]
       [xpos 305]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 125)
                              (make-route 'up 245 65)
                              (make-route 'right 305 65)
                              (make-route 'down 305 125)))]))

(define l8-enemy26
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 65)
                              (make-route 'right 305 65)
                              (make-route 'down 305 125)
                              (make-route 'left 245 125)))]))

(define l8-enemy27
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 65]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 65)
                              (make-route 'down 305 125)
                              (make-route 'left 245 125)
                              (make-route 'up 245 65)))]))


(define l8-enemy28
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 245 125)
                              (make-route 'up 245 65)
                              (make-route 'right 305 65)
                              (make-route 'down 305 125)))]))

(define l8-enemy29
  (new enemy%
       [speed 1]
       [xpos 245]
       [ypos 95]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 65)
                              (make-route 'right 305 65)
                              (make-route 'down 305 125)
                              (make-route 'left 245 125)))]))

(define l8-enemy30
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 65]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 65)
                              (make-route 'down 305 125)
                              (make-route 'left 245 125)
                              (make-route 'up 245 65)))]))






(define l8-enemy31
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 125)
                              (make-route 'up 395 65)
                              (make-route 'left 335 65)
                              (make-route 'down 335 125)))]))


(define l8-enemy32
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 395 65)
                              (make-route 'left 335 65)
                              (make-route 'down 335 125)
                              (make-route 'right 395 125)))]))

(define l8-enemy33
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 65]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 65)
                              (make-route 'down 335 125)
                              (make-route 'right 395 125)
                              (make-route 'up 395 65)))]))

(define l8-enemy34
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 395 125)
                              (make-route 'up 395 65)
                              (make-route 'left 335 65)
                              (make-route 'down 335 125)))]))

(define l8-enemy35
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 95]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 395 65)
                              (make-route 'left 335 65)
                              (make-route 'down 335 125)
                              (make-route 'right 395 125)))]))

(define l8-enemy36
  (new enemy%
       [speed 1]
       [xpos 365]
       [ypos 65]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 335 65)
                              (make-route 'down 335 125)
                              (make-route 'right 395 125)
                              (make-route 'up 395 65)))]))


;Level 9 Enemies

(define l9-speed 5)

(define l9-enemy1
  (new enemy%
       [speed l9-speed]
       [xpos 155]
       [ypos 35]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 155 125)
                              (make-route 'up 155 35)))]))

(define l9-enemy2
  (new enemy%
       [speed l3-speed]
       [xpos 185]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 185 35)
                              (make-route 'down 185 125)))]))

(define l9-enemy3
  (new enemy%
       [speed l9-speed]
       [xpos 215]
       [ypos 35]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 215 125)
                              (make-route 'up 215 35)))]))

(define l9-enemy4
  (new enemy%
       [speed l9-speed]
       [xpos 245]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 35)
                              (make-route 'down 245 125)))]))









(define l9-enemy5
  (new enemy%
       [speed l9-speed]
       [xpos 275]
       [ypos 35]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 35)
                              (make-route 'left 275 35)))]))

(define l9-enemy6
  (new enemy%
       [speed l9-speed]
       [xpos 365]
       [ypos 65]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 275 65)
                              (make-route 'right 365 65)))]))

(define l9-enemy7
  (new enemy%
       [speed l9-speed]
       [xpos 275]
       [ypos 95]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 95)
                              (make-route 'left 275 95)))]))

(define l9-enemy8
  (new enemy%
       [speed l9-speed]
       [xpos 365]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 275 125)
                              (make-route 'right 365 125)))]))






(define l9-enemy9
  (new enemy%
       [speed l9-speed]
       [xpos 395]
       [ypos 35]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 395 125)
                              (make-route 'up 395 35)))]))

(define l9-enemy10
  (new enemy%
       [speed l9-speed]
       [xpos 425]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 425 35)
                              (make-route 'down 425 125)))]))

(define l9-enemy11
  (new enemy%
       [speed l9-speed]
       [xpos 455]
       [ypos 35]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 455 125)
                              (make-route 'up 455 35)))]))

(define l9-enemy12
  (new enemy%
       [speed l9-speed]
       [xpos 485]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 485 35)
                              (make-route 'down 485 125)))]))






(define l9-enemy13
  (new enemy%
       [speed l9-speed]
       [xpos 155]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 245 155)
                              (make-route 'left 155 155)))]))

(define l9-enemy14
  (new enemy%
       [speed l9-speed]
       [xpos 245]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 155 185)
                              (make-route 'right 245 185)))]))

(define l9-enemy15
  (new enemy%
       [speed l9-speed]
       [xpos 155]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 245 215)
                              (make-route 'left 155 215)))]))

(define l9-enemy16
  (new enemy%
       [speed l9-speed]
       [xpos 245]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 155 245)
                              (make-route 'right 245 245)))]))






(define l9-enemy17
  (new enemy%
       [speed l9-speed]
       [xpos 275]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 275 245)
                              (make-route 'up 275 155)))]))

(define l9-enemy18
  (new enemy%
       [speed l9-speed]
       [xpos 305]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 305 155)
                              (make-route 'down 305 245)))]))

(define l9-enemy19
  (new enemy%
       [speed l9-speed]
       [xpos 335]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 335 245)
                              (make-route 'up 335 155)))]))

(define l9-enemy20
  (new enemy%
       [speed l9-speed]
       [xpos 365]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 365 155)
                              (make-route 'down 365 245)))]))





(define l9-enemy21
  (new enemy%
       [speed l9-speed]
       [xpos 395]
       [ypos 155]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 485 155)
                              (make-route 'left 395 155)))]))

(define l9-enemy22
  (new enemy%
       [speed l9-speed]
       [xpos 485]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 395 185)
                              (make-route 'right 485 185)))]))

(define l9-enemy23
  (new enemy%
       [speed l9-speed]
       [xpos 395]
       [ypos 215]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 485 215)
                              (make-route 'left 395 215)))]))

(define l9-enemy24
  (new enemy%
       [speed l9-speed]
       [xpos 485]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 395 245)
                              (make-route 'right 485 245)))]))






(define l9-enemy25
  (new enemy%
       [speed l9-speed]
       [xpos 155]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 155 365)
                              (make-route 'up 155 275)))]))

(define l9-enemy26
  (new enemy%
       [speed l9-speed]
       [xpos 185]
       [ypos 365]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 185 275)
                              (make-route 'down 185 365)))]))

(define l9-enemy27
  (new enemy%
       [speed l9-speed]
       [xpos 215]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 215 365)
                              (make-route 'up 215 275)))]))

(define l9-enemy28
  (new enemy%
       [speed l9-speed]
       [xpos 245]
       [ypos 365]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 245 275)
                              (make-route 'down 245 365)))]))






(define l9-enemy29
  (new enemy%
       [speed l9-speed]
       [xpos 275]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 275)
                              (make-route 'left 275 275)))]))

(define l9-enemy30
  (new enemy%
       [speed l9-speed]
       [xpos 365]
       [ypos 305]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 275 305)
                              (make-route 'right 365 305)))]))

(define l9-enemy31
  (new enemy%
       [speed l9-speed]
       [xpos 275]
       [ypos 335]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 335)
                              (make-route 'left 275 335)))]))

(define l9-enemy32
  (new enemy%
       [speed l9-speed]
       [xpos 365]
       [ypos 365]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'left 275 365)
                              (make-route 'right 365 365)))]))







(define l9-enemy33
  (new enemy%
       [speed l9-speed]
       [xpos 395]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 395 365)
                              (make-route 'up 395 275)))]))

(define l9-enemy34
  (new enemy%
       [speed l9-speed]
       [xpos 425]
       [ypos 365]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 425 275)
                              (make-route 'down 425 365)))]))

(define l9-enemy35
  (new enemy%
       [speed l9-speed]
       [xpos 455]
       [ypos 275]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'down 455 365)
                              (make-route 'up 455 275)))]))

(define l9-enemy36
  (new enemy%
       [speed l9-speed]
       [xpos 485]
       [ypos 365]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'up 485 275)
                              (make-route 'down 485 365)))]))



;Level 10 Enemies

(define l10-enemy1
  (new enemy%
       [speed 1]
       [xpos 95]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 125 125)
                              (make-route 'down 125 155)
                              (make-route 'left 95 155)
                              (make-route 'up 95 125)))]))

(define l10-enemy2
  (new enemy%
       [speed 1]
       [xpos 95]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 125 185)
                              (make-route 'down 125 215)
                              (make-route 'left 95 215)
                              (make-route 'up 95 185)))]))

(define l10-enemy3
  (new enemy%
       [speed 1]
       [xpos 95]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 125 245)
                              (make-route 'down 125 275)
                              (make-route 'left 95 275)
                              (make-route 'up 95 245)))]))

(define l10-enemy4
  (new enemy%
       [speed 1]
       [xpos 155]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 185 125)
                              (make-route 'down 185 155)
                              (make-route 'left 155 155)
                              (make-route 'up 155 125)))]))

(define l10-enemy5
  (new enemy%
       [speed 1]
       [xpos 155]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 185 185)
                              (make-route 'down 185 215)
                              (make-route 'left 155 215)
                              (make-route 'up 155 185)))]))

(define l10-enemy6
  (new enemy%
       [speed 1]
       [xpos 155]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 185 245)
                              (make-route 'down 185 275)
                              (make-route 'left 155 275)
                              (make-route 'up 155 245)))]))


(define l10-enemy7
  (new enemy%
       [speed 1]
       [xpos 215]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 245 125)
                              (make-route 'down 245 155)
                              (make-route 'left 215 155)
                              (make-route 'up 215 125)))]))

(define l10-enemy8
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 125)
                              (make-route 'down 305 155)
                              (make-route 'left 275 155)
                              (make-route 'up 275 125)))]))

(define l10-enemy9
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 185)
                              (make-route 'down 305 215)
                              (make-route 'left 275 215)
                              (make-route 'up 275 185)))]))

(define l10-enemy10
  (new enemy%
       [speed 1]
       [xpos 275]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 305 245)
                              (make-route 'down 305 275)
                              (make-route 'left 275 275)
                              (make-route 'up 275 245)))]))


(define l10-enemy11
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 125)
                              (make-route 'down 365 155)
                              (make-route 'left 335 155)
                              (make-route 'up 335 125)))]))

(define l10-enemy12
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 185)
                              (make-route 'down 365 215)
                              (make-route 'left 335 215)
                              (make-route 'up 335 185)))]))


(define l10-enemy13
  (new enemy%
       [speed 1]
       [xpos 335]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 365 245)
                              (make-route 'down 365 275)
                              (make-route 'left 335 275)
                              (make-route 'up 335 245)))]))

(define l10-enemy14
  (new enemy%
       [speed 1]
       [xpos 395]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 425 245)
                              (make-route 'down 425 275)
                              (make-route 'left 395 275)
                              (make-route 'up 395 245)))]))

(define l10-enemy15
  (new enemy%
       [speed 1]
       [xpos 455]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 485 125)
                              (make-route 'down 485 155)
                              (make-route 'left 455 155)
                              (make-route 'up 455 125)))]))

(define l10-enemy16
  (new enemy%
       [speed 1]
       [xpos 455]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 485 185)
                              (make-route 'down 485 215)
                              (make-route 'left 455 215)
                              (make-route 'up 455 185)))]))

(define l10-enemy17
  (new enemy%
       [speed 1]
       [xpos 455]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 485 245)
                              (make-route 'down 485 275)
                              (make-route 'left 455 275)
                              (make-route 'up 455 245)))]))


(define l10-enemy18
  (new enemy%
       [speed 1]
       [xpos 515]
       [ypos 125]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 545 125)
                              (make-route 'down 545 155)
                              (make-route 'left 515 155)
                              (make-route 'up 515 125)))]))

(define l10-enemy19
  (new enemy%
       [speed 1]
       [xpos 515]
       [ypos 185]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 545 185)
                              (make-route 'down 545 215)
                              (make-route 'left 515 215)
                              (make-route 'up 515 185)))]))


(define l10-enemy20
  (new enemy%
       [speed 1]
       [xpos 515]
       [ypos 245]
       [movement-cycle (make-movement-cycle
                        (list (make-route 'right 545 245)
                              (make-route 'down 545 275)
                              (make-route 'left 515 275)
                              (make-route 'up 515 245)))]))







