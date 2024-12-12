
(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block table)
  (:predicates
    (on ?x ?y)
    (clear ?x)
    (holding ?x)
  )
  (:action pick-up
    :parameters (?x)
    :precondition (and (clear ?x))
    :effect (and (holding ?x) (not (clear ?x))))
  (:action put-down
    :parameters (?x)
    :precondition (and (holding ?x))
    :effect (and (not (holding ?x)) (clear ?x)))
  (:action stack
    :parameters (?x ?y)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (not (holding ?x))))
)
