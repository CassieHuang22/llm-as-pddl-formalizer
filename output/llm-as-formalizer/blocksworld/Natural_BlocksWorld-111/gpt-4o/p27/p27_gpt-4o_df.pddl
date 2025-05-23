(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on-table ?b - block)
    (on ?b1 - block ?b2 - block)
    (clear ?b - block)
    (holding ?b - block)
    (hand-empty)
  )

  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (on-table ?b) (hand-empty))
    :effect (and (holding ?b) (not (on-table ?b)) (not (hand-empty))))

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (hand-empty) (not (holding ?b)) (clear ?b)))

  (:action stack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (holding ?b1) (clear ?b2))
    :effect (and (on ?b1 ?b2) (hand-empty) (not (holding ?b1)) (clear ?b1) (not (clear ?b2))))

  (:action unstack
    :parameters (?b1 - block ?b2 - block)
    :precondition (and (on ?b1 ?b2) (clear ?b1) (hand-empty))
    :effect (and (holding ?b1) (clear ?b2) (not (on ?b1 ?b2)) (not (hand-empty))))
)