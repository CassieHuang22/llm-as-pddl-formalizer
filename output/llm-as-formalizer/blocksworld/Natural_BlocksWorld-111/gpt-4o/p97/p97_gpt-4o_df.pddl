(define (domain blocksworld)
  (:requirements :strips :typing)
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
    :effect (and (holding ?b) (not (on-table ?b)) (not (arm-empty)) (not (clear ?b)))
  )

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (arm-empty) (clear ?b) (not (holding ?b)))
  )

  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (on ?b1 ?b2) (arm-empty) (clear ?b1) (not (holding ?b1)) (not (clear ?b2)))
  )

  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (arm-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (arm-empty)))
  )
)