(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on-table ?b - block)
    (on ?b1 - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (arm-empty)
  )
  
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (not (on-table ?b)) (not (arm-empty)) (holding ?b))
  )

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (not (holding ?b)) (arm-empty))
  )

  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (not (holding ?b1)) (not (clear ?b2)) (on ?b1 ?b2) (arm-empty))
  )

  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (not (on ?b1 ?b2)) (holding ?b1) (clear ?b2) (not (arm-empty)))
  )
)