(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on ?x - block ?y - block)
    (on-table ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (arm-empty)
  )

  (:action pick-up
    :parameters (?x - block)
    :precondition (and (clear ?x) (on-table ?x) (arm-empty))
    :effect (and (holding ?x) (not (clear ?x)) (not (on-table ?x)) (not (arm-empty)))
  )

  (:action put-down
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (on-table ?x) (clear ?x) (arm-empty) (not (holding ?x)))
  )

  (:action stack
    :parameters (?x - block ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y)))
  )

  (:action unstack
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (arm-empty)))
  )
)
