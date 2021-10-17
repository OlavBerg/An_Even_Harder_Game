#lang racket/gui
(require "enemy-movement.rkt")
(require "help-procedures.rkt")
(provide (all-defined-out))


(define player-character%
  (class object%
    (init-field
     [time-until-move 7]
     #|The time, in ms, before the player character moves to the next pixle.|#
     
     [xpos 0]
     [ypos 0])
    (define/public (get-xpos)
      xpos)
    (define/public (get-ypos)
      ypos)
    (define/public (set-xpos! new-xpos)
      (set! xpos new-xpos))
    (define/public (set-ypos! new-ypos)
      (set! ypos new-ypos))
    (define/public (get-time-until-move)
      time-until-move)
    (define/public (set-time-until-move! new-time)
      (set! time-until-move new-time))
    (define/private (reset-time-until-move!)
      (set! time-until-move 7))
    (define/private (move-right level)
      (let ((next-tile1 (send level
                              get-tile
                              (+ xpos 20)
                              ypos))
            (next-tile2 (send level
                              get-tile
                              (+ xpos 20)
                              (+ ypos 19))))
        (cond 
          ((or (send next-tile1 solid?)
               (send next-tile2 solid?))
           (void))
          ((or (and (not (goal-tile? next-tile1))
                    (not (goal-tile? next-tile2)))
               (send level coins-left?))
           (set! xpos (+ xpos 1)))
          (else (send level finnish-level)))))
      (define/private (move-left level)
        (let ((next-tile1 (send level
                                get-tile
                                (- xpos 1)
                                ypos))
              (next-tile2 (send level
                                get-tile
                                (- xpos 1)
                                (+ ypos 19))))
          (cond 
            ((or (send next-tile1 solid?)
                 (send next-tile2 solid?))
             (void))
            ((or (and (not (goal-tile? next-tile1))
                      (not (goal-tile? next-tile2)))
                 (send level coins-left?))
             (set! xpos (- xpos 1)))
            (else (send level finnish-level)))))
      (define/private (move-down level)
        (let  ((next-tile1 (send level
                                 get-tile
                                 xpos
                                 (+ ypos 20)))
               (next-tile2 (send level
                                 get-tile
                                 (+ xpos 19)
                                 (+ ypos 20))))
          (cond 
            ((or (send next-tile1 solid?)
                 (send next-tile2 solid?))
             (void))
            ((or (and (not (goal-tile? next-tile1))
                      (not (goal-tile? next-tile2)))
                 (send level coins-left?))
             (set! ypos (+ ypos 1)))
            (else (send level finnish-level)))))
      (define/private (move-up level)
        (let ((next-tile1 (send level
                                get-tile
                                xpos
                                (- ypos 1)))
              (next-tile2 (send level
                                get-tile
                                (+ xpos 19)
                                (- ypos 1))))
          (cond 
            ((or (send next-tile1 solid?)
                 (send next-tile2 solid?))
             (void))
            ((or (and (not (goal-tile? next-tile1))
                      (not (goal-tile? next-tile2)))
                 (send level coins-left?))
             (set! ypos (- ypos 1)))
            (else (send level finnish-level)))))
      (define/public (move level game-canvas)
        (if (= time-until-move 0)
            (begin
              (when (send game-canvas key-down? 'right)
                (move-right level))
              (when (send game-canvas key-down? 'left)
                (move-left level))
              (when (send game-canvas key-down? 'down)
                (move-down level))
              (when (send game-canvas key-down? 'up)
                (move-up level))
              (reset-time-until-move!))
            (set! time-until-move (- time-until-move 1))))
      (super-new)))



(define enemy%
    (class object%
      (init-field 
       speed 
       #|An intiger from 1 to 8 that affects how fast the enemy is moving. 
       The speed is NOT linnear in this case.|#
       
       movement-cycle
       #|Determines how the enemy moves. A movement cycle is a hash of "routes",
       with each route being a straight line. For example, if the enemy moves
       in a square-shaped way, its movement cycle consists of four routes,
       one for each side of the square. When the enemy reaches the end-xpos
       and end-ypos of a route, it moves to the next route.|#
       
       [time-until-move (- 8 speed)]
       #|The time, in ms, before the enemy moves to the next pixle.|#
       
       [xpos 0]
       [ypos 0]
       [current-route-nr 1]
       #|The number of the route the enemy currently is moving in.
       The first route of a cycle has number 1, the second has number 2, etc.|#
       )
      (define/public (get-xpos)
        xpos)
      (define/public (get-ypos)
        ypos)
      (define/private (get-route route-nr)
        (hash-ref movement-cycle route-nr))
      (define/private (move-right)
        (set! xpos (+ xpos 1)))
      (define/private (move-left)
        (set! xpos (- xpos 1)))
      (define/private (move-down)
        (set! ypos (+ ypos 1)))
      (define/private (move-up)
        (set! ypos (- ypos 1)))
      (define/private (reset-time-until-move!)
        (set! time-until-move (- 8 speed)))
      (define/public (move)
        (if (= time-until-move 0)
            (let* ((current-route (get-route current-route-nr))
                   (current-direction (direction current-route))
                   (number-of-routes (hash-count movement-cycle))
                   (next-route-nr (if (= current-route-nr number-of-routes)
                                      1
                                      (+ current-route-nr 1))))
              (when (eq? current-direction 'right)
                (if (= xpos (end-xpos current-route))
                    (set! current-route-nr next-route-nr)
                    (move-right)))
              (when (eq? current-direction 'left)
                (if (= xpos (end-xpos current-route))
                    (set! current-route-nr next-route-nr)
                    (move-left)))
              (when (eq? current-direction 'down)
                (if (= ypos (end-ypos current-route))
                    (set! current-route-nr next-route-nr)
                    (move-down)))
              (when (eq? current-direction 'up)
                (if (= ypos (end-ypos current-route))
                    (set! current-route-nr next-route-nr)
                    (move-up)))
              (reset-time-until-move!))
            (set! time-until-move (- time-until-move 1))))
      (super-new)))


(define coin%
    #|Some levels have coins. The player has to pick up all of them in order to
    complete the level.|#
    (class object%
      (init-field
       xpos
       ypos)
      (define/public (get-xpos)
        xpos)
      (define/public (get-ypos)
        ypos)
      (super-new)))


(define tile%
  #|The pieces that makes up a level map.|#
  (class object%
    (init-field 
     number 
     bitmap
     #|The graphical image of the tile.|#
     
     solid 
     #|False if the player character character can move through
       the tile, else true.|#
     )
    (define/public (get-number)
      number)
    (define/public (get-bitmap)
      bitmap)
    (define/public (solid?)
      solid)
    (super-new)))


(define level%
  (class object%
    (init-field
     number
     structure 
     #|The physical structure of the level, 
       consists of a vector of vectors of tiles.|# 
     
     graphic-map
     #|The graphical image of the level.|#
     
     start-xpos
     start-ypos
     player-character
     enemies
     finnish-proc
     #|Called when the player finnishes the level.|#
     
     [all-coins '()]
     #|All the coins of the level, the coins it contains from the start, 
       before the player character has picked up any.|#
     
     [current-coins all-coins]
     #|The current coins of the level, 
       the coins that haven't been picked up yet.|#
     )
    (define/public (get-number)
      number)
    (define/public (get-structure)
      structure)
    (define/public (get-graphic-map)
      graphic-map)
    (define/public (get-start-xpos)
      start-xpos)
    (define/public (get-start-ypos)
      start-ypos)
    (define/public (get-player-character)
      player-character)
    (define/public (get-enemies)
      enemies)
    (define/public (get-current-coins)
      current-coins)
    (define/public (get-tile xpos ypos)
      #|Retrieves the tile on a specific position of the level.|#
      (vector-ref (vector-ref structure (quotient ypos 30)) 
                  (quotient xpos 30)))
    (define/public (coins-left?)
      #|True if there still are some coins on the level, else false.|#
      (not (null? current-coins)))
    (define/public (move-enemies)
      (define (helper enemies)
        (when (not (empty? enemies))
          (send (first-enemy enemies) move)
          (helper (rest-of-enemies enemies))))
      (helper enemies))
    (define/public (collision-with-enemy?)
      #|True if the player character touches an enemy, else false.|#
      (let ((player-xpos (send player-character get-xpos))
            (player-ypos (send player-character get-ypos)))
        (ormap (lambda (enemy)
                 (and (number-is-in-interval?
                       #|See "help-procedures.rkt".|#
                       (send enemy get-xpos)
                       (- player-xpos 20)
                       (+ player-xpos 20))
                      (number-is-in-interval?
                       (send enemy get-ypos)
                       (- player-ypos 20)
                       (+ player-ypos 20))))
               enemies)))
    (define/public (pick-coins)
      #|The player character picks up a coin if it touches one.|#
      (define (helper checked-coins 
                      remaining-coins
                      player-xpos 
                      player-ypos)
        (cond ((empty? remaining-coins) (void))
              ((and (number-is-in-interval? 
                     (send (first-coin remaining-coins) get-xpos)
                     (- player-xpos 16)
                     (+ player-xpos 20))
                    (number-is-in-interval? 
                     (send (first-coin remaining-coins) get-ypos)
                     (- player-ypos 16)
                     (+ player-ypos 20)))
               (set! current-coins
                     (append checked-coins
                             (rest-of-coins remaining-coins))))
              (else (helper (cons (first-coin remaining-coins)
                                  checked-coins)
                            (rest-of-coins remaining-coins)
                            player-xpos
                            player-ypos))))
      (helper '() 
              current-coins
              (send player-character get-xpos)
              (send player-character get-ypos)))
    (define/private (reset-player)
      (send player-character set-xpos! start-xpos)
      (send player-character set-ypos! start-ypos))
    (define/private (reset-coins)
      (set! current-coins all-coins))
    (define/public (restart)
      (reset-player)
      (reset-coins))
    (define/public (finnish-level)
      (finnish-proc))
    (super-new)))




(define game-timer%
  (class timer%
    (init-field interval)
    (define/public (start-timer)
      (send this start interval #f))
    (super-new)))



(define game-frame%
  (class frame%
    (init-field physics-timer
                graphics-timer
                [current-level #f])
    (define/public (get-current-level)
      current-level)
    (define/public (set-current-level! new-level)
      (set! current-level new-level))
    (define/public (start-timers)
      (send physics-timer start-timer)
      (send graphics-timer start-timer))
    (define/public (stop-timers)
      (send physics-timer stop)
      (send graphics-timer stop))
    (super-new)))





(define game-canvas%
  (class canvas%
    (init-field [keyboard (make-hasheq)])
    (define/private (key-down! key)
      #|Called when the player presses a key on the keyboard.|# 
      (hash-set! keyboard key #t))
    (define/public (key-up! key)
      #|Called when the player releases a key on the keyboard.|# 
      (hash-set! keyboard key #f))
    (define/public (key-down? key)
      #|True if the specific key is pressed down, else false.|#
      (hash-ref keyboard key #f))
    (define/override (on-char key-event)
      (let ((key (send key-event get-key-code))
            (release (send key-event get-key-release-code)))
        (when (eq? release 'press)
          (key-down! key))
        (when (eq? key 'release)
          (key-up! release))))
    (super-new)))
















  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  