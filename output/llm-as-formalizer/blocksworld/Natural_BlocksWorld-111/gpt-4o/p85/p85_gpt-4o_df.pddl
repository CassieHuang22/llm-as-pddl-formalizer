(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on-table ?b - block)
    (on ?b - block ?u - block)
    (clear ?b - block)
    (holding ?b - block)
    (arm-empty)
  )
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (arm-empty))
    :effect (and (holding ?b) (not (arm-empty)) (not (on-table ?b)) (not (clear ?b)))
  )
  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (clear ?b) (arm-empty) (on-table ?b) (not (holding ?b)))
  )
  (:action stack
    :parameters (?b - block ?u - block)
    :precondition (and (holding ?b) (clear ?u))
    :effect (and (on ?b ?u) (arm-empty) (clear ?b) (not (holding ?b)) (not (clear ?u)))
  )
  (:action unstack
    :parameters (?b - block ?u - block)
    :precondition (and (on ?b ?u) (clear ?b) (arm-empty))
    :effect (and (holding ?b) (clear ?u) (not (arm-empty)) (not (on ?b ?u)) (not (clear ?b)))
  )
)