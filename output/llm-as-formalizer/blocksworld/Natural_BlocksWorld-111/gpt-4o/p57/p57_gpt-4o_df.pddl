(define (domain blocksworld)
  (:requirements :strips :typing)
  (:types block)
  (:predicates
    (on ?x - block ?y - block)
    (ontable ?x - block)
    (clear ?x - block)
    (holding ?x - block)
    (arm-empty)
  )
  (:action pickup
    :parameters (?x - block)
    :precondition (and (clear ?x) (ontable ?x) (arm-empty))
    :effect (and (holding ?x) (not (arm-empty)) (not (ontable ?x)) (not (clear ?x))))
  (:action putdown
    :parameters (?x - block)
    :precondition (holding ?x)
    :effect (and (ontable ?x) (clear ?x) (arm-empty) (not (holding ?x))))
  (:action stack
    :parameters (?x - block ?y - block)
    :precondition (and (holding ?x) (clear ?y))
    :effect (and (on ?x ?y) (clear ?x) (arm-empty) (not (holding ?x)) (not (clear ?y))))
  (:action unstack
    :parameters (?x - block ?y - block)
    :precondition (and (on ?x ?y) (clear ?x) (arm-empty))
    :effect (and (holding ?x) (clear ?y) (not (arm-empty)) (not (on ?x ?y)) (not (clear ?x))))
)