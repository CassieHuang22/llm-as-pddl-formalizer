(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on-table ?b - block)
    (on ?b - block ?below - block)
    (clear ?b - block)
    (holding ?b - block)
    (hand-empty)
  )
  
  (:action pick-up
    :parameters (?b - block)
    :precondition (and (clear ?b) (hand-empty) (on-table ?b))
    :effect (and (holding ?b) (not (on-table ?b)) (not (hand-empty)) (not (clear ?b)))
  )

  (:action put-down
    :parameters (?b - block)
    :precondition (holding ?b)
    :effect (and (on-table ?b) (hand-empty) (not (holding ?b)) (clear ?b))
  )

  (:action stack
    :parameters (?b - block ?below - block)
    :precondition (and (holding ?b) (clear ?below))
    :effect (and (on ?b ?below) (hand-empty) (not (holding ?b)) (not (clear ?below)))
  )

  (:action unstack
    :parameters (?b - block ?below - block)
    :precondition (and (on ?b ?below) (clear ?b) (hand-empty))
    :effect (and (holding ?b) (clear ?below) (not (on ?b ?below)) (not (hand-empty)))
  )
)