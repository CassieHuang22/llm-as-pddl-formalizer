(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block table)
  (:predicates
    (on ?x - block ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (armempty)
  )
  (:action pickup
    :parameters (?x - block)
    :precondition (and (clear ?x) (ontable ?x) (armempty))
    :effect (and (holding ?x) (not (clear ?x)) (not (ontable ?x)) (not (armempty))))
  (:action putdown
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (clear ?x) (ontable ?x) (armempty) (not (holding ?x))))
  (:action stack
    :parameters (?x - block ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (armempty) (not (holding ?x)) (not (clear ?y))))
  (:action unstack
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (armempty))
    :effect (and (holding ?x) (clear ?y) (not (on ?x ?y)) (not (clear ?x)) (not (armempty))))
)