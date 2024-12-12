(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on ?x - block ?y - block)  ; block x is on block y
    (ontable ?x - block)        ; block x is on the table
    (clear ?x - block)          ; block x has nothing on it
    (holding ?x - block)        ; the robot hand is holding block x
    (handempty)                 ; the robot hand is empty
  )

  (:action pick-up
    :parameters (?x - block)
    :precondition (and (clear ?x) (ontable ?x) (handempty))
    :effect (and (holding ?x)
                 (not (handempty))
                 (not (ontable ?x))
                 (not (clear ?x))))

  (:action put-down
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (ontable ?x)
                 (clear ?x)
                 (handempty)
                 (not (holding ?x))))

  (:action stack
    :parameters (?x - block ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y)
                 (clear ?x)
                 (handempty)
                 (not (holding ?x))
                 (not (clear ?y))))

  (:action unstack
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (handempty))
    :effect (and (holding ?x)
                 (clear ?y)
                 (not (clear ?x))
                 (not (handempty))
                 (not (on ?x ?y)))))